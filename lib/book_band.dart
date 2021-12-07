// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:music_band/routes.dart';

class BookBand extends StatefulWidget {
  const BookBand({Key? key}) : super(key: key);

  @override
  _BookBandState createState() => _BookBandState();
}

class _BookBandState extends State<BookBand> {
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
                  'assets/images/book_band.png',
                  fit: BoxFit.cover,
                ),
                const Text(
                  'Book Band',
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
                          labelText: 'Address',
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'purpose',
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Cost',
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Date',
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Contact Info',
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.bookfinal);
                        },
                        child: const Text('Book'),
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          shadowColor: Colors.deepPurple,
                          minimumSize: const Size(150, 45),
                          backgroundColor: Colors.deepPurple[600],
                        ),
                      ),
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
