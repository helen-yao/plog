import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        // logo

        // login to start plogging
        const SizedBox(height:25),
        Text(
          "Login to start plogging!", 
          style: TextStyle(
            fontSize: 16,
            color:Theme.of(context).colorScheme.inversePrimary,
          ),
        ),
        // username

        // password

        // sign in button

        // don't have an account? sign up!
      ],)
    );
  }
}