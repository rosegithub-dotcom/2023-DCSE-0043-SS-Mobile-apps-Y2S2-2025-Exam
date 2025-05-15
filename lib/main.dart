// main.dart
import 'package:exam_app/screens/mockup_screen_one.dart';
import 'package:exam_app/screens/mockup_screen_two.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MovieApp());
}

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: const Color(0xFFF2F2F7),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TMDB Mockup'),
          backgroundColor: Colors.teal,
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Screen One:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              MockupScreenOne(),
              SizedBox(height: 32),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Screen Two:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              MockupScreenTwo(),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}