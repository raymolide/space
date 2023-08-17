import 'package:flutter/material.dart';
import 'package:space/feature_feed/presentation/screens/home.dart';
import 'package:space/screens/checkout.dart';
import 'package:space/feature_auth/presentation/screens/login.dart';
import 'package:space/feature_auth/presentation/screens/signin.dart';

import 'common/constants.dart';

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
      '/login': (context) => Login(),
      '/home': (context) => const HomePage(),
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
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomCenter,
                  colors: [darkGreen, lightGreen, lightGreen, darkGreen])),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/signin');
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 8,
                  child: Center(
                    child: Image.asset(
                      'assets/astronaut.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Space',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          )),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
