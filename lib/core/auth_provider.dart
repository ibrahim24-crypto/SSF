
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:myapp/auth/firebase_auth_service.dart';

// Provider for AuthService
final authServiceProvider = Provider<AuthService>((ref) {
  return AuthService();
});

// Provider for auth state changes
final authStateChangesProvider = StreamProvider<User?>((ref) {
  return ref.watch(authServiceProvider).authStateChanges;
});
