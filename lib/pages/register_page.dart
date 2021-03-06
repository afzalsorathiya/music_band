// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:music_band/routes.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

String name = "";

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Material(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Image.asset(
                  'assets/images/register_image.png',
                  fit: BoxFit.cover,
                ),
                const Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'SourceSansPro',
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  child: Column(
                    children: <Widget>[
                      const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Name',
                          hintText: 'Enter Your Name',
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Username',
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'confirm Password',
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.bookband);
                        },
                        child: const Text('Register'),
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          shadowColor: Colors.deepPurple,
                          minimumSize: const Size(150, 45),
                          backgroundColor: Colors.deepPurple[600],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.login);
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.white, elevation: 0),
                        child: Text(
                          'Back Login',
                          style: TextStyle(color: Colors.deepPurple[600]),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
