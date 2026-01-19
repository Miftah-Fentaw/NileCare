import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Forgot Password Page'),
            TextButton(
              onPressed: () {
                context.push('/signin');
              },
              child: Text('sign in'),
            ),
            TextButton(
              onPressed: () {
                context.go('/home');
              },
              child: Text('go to home'),
            ),
          ],
        ),
      ),
    );
  }
}
