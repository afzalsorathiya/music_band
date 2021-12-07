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
                const SizedBox(
                  height: 20,
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
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Enter your name',
                          labelText: 'Name',
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Address',
                          hintText: 'Enter Your Address',
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'User Name',
                          hintText: 'Enter Your Name',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 20),
                        child: TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: "Enter Password",
                            labelText: "Password",
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.welcome);
                        },
                        child: const Text('Login'),
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          shadowColor: Colors.deepPurple,
                          minimumSize: const Size(150, 45),
                          backgroundColor: Colors.deepPurple[600],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Haven't an account Make One",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.welcome);
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.white, elevation: 0),
                        child: Text(
                          'Register Now',
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
