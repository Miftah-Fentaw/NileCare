import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Sign In Page'),
            TextButton(
              onPressed: () {
                context.push('/signup');
              },
              child: Text('sign up'),
            ),
            TextButton(
              onPressed: () {
                context.push('/forgot-password');
              },
              child: Text('forgot password'),
            ),
            TextButton(
              onPressed: () {
                context.go(
                  '/home',
                ); // Using go here as it's a major transition to the main app area
              },
              child: Text('go to home'),
            ),
          ],
        ),
      ),
    );
  }
}
