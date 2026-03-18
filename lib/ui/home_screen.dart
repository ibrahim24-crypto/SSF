
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/core/auth_provider.dart';
import 'package:myapp/core/firestore_provider.dart';
import 'package:myapp/core/theme_provider.dart';
import 'package:myapp/ui/create_post_screen.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authService = ref.watch(authServiceProvider);
    final postsStream = ref.watch(postsStreamProvider);
    final themeMode = ref.watch(themeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('SecretScroll'),
        actions: [
          IconButton(
            icon: Icon(themeMode == ThemeMode.dark ? Icons.light_mode : Icons.dark_mode),
            onPressed: () => ref.read(themeProvider.notifier).toggleTheme(),
            tooltip: 'Toggle Theme',
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => authService.signOut(),
          )
        ],
      ),
      body: postsStream.when(
        data: (QuerySnapshot snapshot) {
          if (snapshot.docs.isEmpty) {
            return const Center(child: Text('No posts yet. Create one!'));
          }
          return ListView(children: snapshot.docs.map((doc) {
            final data = doc.data() as Map<String, dynamic>;
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              elevation: 4,
              child: ListTile(
                title: Text(data['title'], style: Theme.of(context).textTheme.titleLarge),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Text(data['content'], style: Theme.of(context).textTheme.bodyMedium),
                ),
              ),
            );
          }).toList());
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text('Error: $error')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CreatePostScreen()),
          );
        },
        tooltip: 'Create Post',
        child: const Icon(Icons.add),
      ),
    );
  }
}
