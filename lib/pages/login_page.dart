import 'package:flutter/material.dart';
import 'package:plog/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        // logo

        // login to start plogging
        const SizedBox(height:25),

        Text(
          "Login to start plogging!", 
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            color:Theme.of(context).colorScheme.inversePrimary,
          ),
        ),

        const SizedBox(height:25),

        // username
        MyTextField(
          controller: usernameController, 
          hintText: "Username", 
          obscureText: false,
        ),

        const SizedBox(height:10),

        // password
        MyTextField(
          controller: passwordController, 
          hintText: "Password", 
          obscureText: true,
        ),

        const SizedBox(height:25),

        // sign in button

        // don't have an account? sign up!
      ],)
    );
  }
}