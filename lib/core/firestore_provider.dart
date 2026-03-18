
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/services/firestore_service.dart';

final firestoreServiceProvider = Provider<FirestoreService>((ref) {
  return FirestoreService();
});

final postsStreamProvider = StreamProvider.autoDispose<QuerySnapshot>((ref) {
  final firestoreService = ref.watch(firestoreServiceProvider);
  return firestoreService.getPosts();
});
