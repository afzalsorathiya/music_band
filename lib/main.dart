import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'package:';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
