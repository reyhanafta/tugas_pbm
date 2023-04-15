import 'package:flutter/material.dart';
import 'package:tugaspr1/homepage.dart';
import 'package:tugaspr1/login.dart';
import 'package:tugaspr1/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kalkulator BMI',
      theme: ThemeData(
          colorScheme: ColorScheme.light(
              primary: Color.fromARGB(255, 6, 167, 113),
              background: Color.fromARGB(255, 5, 195, 141),
              surface: Color.fromARGB(255, 5, 195, 141))),
      initialRoute: "/login",
      routes: {
        "/register": (context) => RegisterPage(),
        "/login": (context) => LoginPage(
              username: username,
              password: password,
            ),
        "/home": (context) => HomePage(
              username: username,
            )
      },
    );
  }
}