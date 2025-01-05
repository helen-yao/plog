import 'package:flutter/material.dart';
import 'package:plog/components/my_button.dart';
import 'package:plog/components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();  
  final TextEditingController confirmPasswordController = TextEditingController();  


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        // logo

        // Register to start plogging
        const SizedBox(height:25),

        Text(
          "Sign up to start plogging!", 
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

        //confirm pasword
        MyTextField(
          controller: confirmPasswordController, 
          hintText: "Confirm password", 
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
            Text("Already have an account?", 
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              )
            ),
            const SizedBox(width: 4),
            GestureDetector(
              onTap: widget.onTap,
              child: Text("Sign in here!",
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