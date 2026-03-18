
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/core/auth_provider.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authService = ref.watch(authServiceProvider);
    final TextEditingController _displayNameController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => authService.signInWithGoogle(),
              child: const Text('Sign in with Google'),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _displayNameController,
              decoration: const InputDecoration(
                labelText: 'Enter a display name',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (_displayNameController.text.isNotEmpty) {
                  authService.signInAnonymously(_displayNameController.text);
                }
              },
              child: const Text('Sign in Anonymously'),
            ),
          ],
        ),
      ),
    );
  }
}
