import 'package:cosmic_app/services/cache.dart';
import 'package:flutter/material.dart';
import '../../core/constants/strings.dart';

class SignupScreen extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.signupTitle)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: AppStrings.emailLabel),
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(labelText: AppStrings.passwordLabel),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final user = {
              'id': '123',
             'name': 'Arthur Dent',
              'email': 'arthur@galaxy.com'
              };
                await CachingService.saveUserData(user, const Duration(days: 7));

    Navigator.pushReplacementNamed(context, '/home');
              },
              child: const Text(AppStrings.signUpButton),
            ),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/login'),
              child: const Text(AppStrings.alreadyHaveAccount),
            ),
          ],
        ),
      ),
    );
  }
}
