import 'package:flutter/material.dart';
import 'package:music_band/pages/register_page.dart';
import 'package:music_band/routes.dart';
import 'package:music_band/welcome.dart';
import 'pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Band',
      themeMode: ThemeMode.light,
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      // home: const LoginPage(),
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.register: (context) => const RegisterPage(),
        MyRoutes.welcome: (context) => const Welcome(),
      },
    );
  }
}
