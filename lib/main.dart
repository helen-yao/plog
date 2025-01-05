import 'package:flutter/material.dart';
import 'package:plog/auth/login_or_register.dart';
import 'package:plog/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plog',
      home: LoginorRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
