// ignore_for_file: prefer_const_constructors

import 'package:fci_iti/screens/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      routes: <String, WidgetBuilder>{
        '/home_page': (BuildContext context) => HomePage(),
      },
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 60, left: 16),
              child: Text(
                "Log In",
                style: TextStyle(fontSize: 40),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 28, left: 16, right: 16),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffF6F6F6),
                  border: OutlineInputBorder(),
                  hintText: 'Email',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 28, left: 16, right: 16),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffF6F6F6),
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                ),
              ),
            ),
            Spacer(flex: 3),
            MaterialButton(
              onPressed: () => Navigator.of(context).pushNamed('/home_page'),
              minWidth: 343,
              height: 51,
              color: Color(0xff5DB075),
              child: Text(
                "Log in",
                style: TextStyle(color: Color(0xffFFFFFF), fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 30),
              child: Text(
                "forgot your password?",
                style: TextStyle(color: Colors.green, fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
