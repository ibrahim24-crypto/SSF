
import 'package:flutter/foundation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Get current user
  User? get currentUser => _auth.currentUser;

  // Auth state changes
  Stream<User?> get authStateChanges => _auth.authStateChanges();

  // Sign in with Google
  Future<UserCredential?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        // The user canceled the sign-in
        return null;
      }
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final UserCredential userCredential = await _auth.signInWithCredential(credential);

      // Save user to Firestore
      await _saveUserToFirestore(userCredential.user, isAnonymous: false);

      return userCredential;
    } catch (e) {
      debugPrint('Error during Google sign-in: $e');
      return null;
    }
  }

  // Sign in anonymously
  Future<UserCredential?> signInAnonymously(String displayName) async {
    try {
      // Check if display name is unique
      final isUnique = await _isDisplayNameUnique(displayName);
      if (!isUnique) {
        throw Exception('Display name is already taken.');
      }

      final UserCredential userCredential = await _auth.signInAnonymously();
      
      // Save user to Firestore
      await _saveUserToFirestore(userCredential.user, isAnonymous: true, displayName: displayName);
      
      // Save display name to userDisplayNames collection
      await _firestore.collection('userDisplayNames').doc(displayName.toLowerCase()).set({
        'userId': userCredential.user!.uid,
        'createdAt': FieldValue.serverTimestamp(),
      });

      return userCredential;
    } catch (e) {
      debugPrint('Error during anonymous sign-in: $e');
      return null;
    }
  }

  // Save user data to Firestore
  Future<void> _saveUserToFirestore(User? user, {required bool isAnonymous, String? displayName}) async {
    if (user == null) return;

    final userRef = _firestore.collection('users').doc(user.uid);
    final doc = await userRef.get();

    if (!doc.exists) {
      userRef.set({
        'uid': user.uid,
        'email': user.email,
        'displayName': isAnonymous ? displayName : user.displayName,
        'role': 'user',
        'permissions': {
          'approve_pictures': false,
          'delete_posts': false,
          'delete_comments': false,
          'manage_admins': false,
          'delete_users': false,
          'manage_forbidden_words': false,
          'manage_protected_names': false,
        },
        'createdAt': FieldValue.serverTimestamp(),
        'isAnonymous': isAnonymous,
      });
    }
  }

  // Check if display name is unique
  Future<bool> _isDisplayNameUnique(String displayName) async {
    final doc = await _firestore.collection('userDisplayNames').doc(displayName.toLowerCase()).get();
    return !doc.exists;
  }

  // Sign out
  Future<void> signOut() async {
    await _googleSignIn.signOut();
    await _auth.signOut();
  }
}
