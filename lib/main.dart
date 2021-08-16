import 'package:flutter/material.dart';
import 'package:resto_app/screens/detail_page.dart';
import 'package:resto_app/screens/home.dart';
import 'dart:async';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Resto App",
      routes: {
        '/': (context) => Splash(),
        '/home': (context) => Home(),
      },
    );
  }
}

class Splash extends StatefulWidget {
  Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
      Timer(
        Duration(seconds: 3),
        () => Navigator.pushNamed(context, '/home'),
      );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.green,
       body: Center(
         child: Text("splash screen"),
       ),
    );
  }
}