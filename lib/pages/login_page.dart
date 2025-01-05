import 'package:flutter/material.dart';
import 'package:plog/components/my_button.dart';
import 'package:plog/components/my_textfield.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();  

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

        const SizedBox(height:10),

        // sign in button
        MyButton(text: "Sign in", onTap: () {}),

        const SizedBox(height:25),

        // don't have an account? sign up!
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Don't have an account?", 
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              )
            ),
            const SizedBox(width: 4),
            GestureDetector(
              onTap: widget.onTap,
              child: Text("Sign up here!",
                  style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.bold,
                )
              ),
            )
          ],
        ),

        const SizedBox(height:25),
      ],
      )
    );
  }
}