
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/core/auth_provider.dart';
import 'package:myapp/core/firestore_provider.dart';

class CreatePostScreen extends ConsumerWidget {
  const CreatePostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController titleController = TextEditingController();
    final TextEditingController contentController = TextEditingController();
    final authService = ref.watch(authServiceProvider);
    final firestoreService = ref.watch(firestoreServiceProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Post'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: 'Title',
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: contentController,
              decoration: const InputDecoration(
                labelText: 'Content',
              ),
              maxLines: 5,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final user = authService.currentUser;
                if (user != null) {
                  firestoreService.addPost(
                    titleController.text,
                    contentController.text,
                    user.uid,
                  );
                  Navigator.pop(context);
                }
              },
              child: const Text('Create Post'),
            ),
          ],
        ),
      ),
    );
  }
}
