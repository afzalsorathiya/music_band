// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:music_band/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

String name = "";

class _LoginPageState extends State<LoginPage> {
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
                  'assets/images/login_image.png',
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Welcome',
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
                        decoration: InputDecoration(
                          hintText: "Enter Your Name",
                          labelText: "Username",
                        ),
                        // onChanged: (value) {
                        //   name = value;
                        //   setState(() {});
                        // },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 20),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Enter Password",
                            labelText: "Password",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.bookband);
                        },
                        child: Text('Login'),
                        style: TextButton.styleFrom(
                          textStyle: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          shadowColor: Colors.deepPurple,
                          minimumSize: Size(150, 45),
                          backgroundColor: Colors.deepPurple[600],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Haven't an account Make One",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.register);
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
