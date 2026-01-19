import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Sign Up Page'),
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
