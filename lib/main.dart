import 'package:flutter/material.dart';
import 'package:space/screens/login.dart';
import 'package:space/screens/signin.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    theme: ThemeData(
      fontFamily: 'Arial',
      primarySwatch: Colors.blue,
      inputDecorationTheme: const InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 3, color: Colors.green),
        ),
      ),
    ),
    routes: {
      '/': (context) => const MyApp(),
      '/signin': (context) => const Signin(),
      '/login': (context) => const Login(),
    },
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromARGB(255, 26, 71, 100),
              Color.fromARGB(255, 2, 165, 168),
              Color.fromARGB(255, 2, 165, 168),
              Color.fromARGB(255, 26, 71, 100),
            ])),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/signin');
          },
          child: Center(
            child: Image.asset(
              'assets/astronaut.png',
              fit: BoxFit.contain,
            ),
          ),
        ));
  }
}
