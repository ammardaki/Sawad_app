import 'dart:async';

import 'package:akhawa/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(
        seconds: 3,
      ),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: ((context) => Home()),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              tileMode: TileMode.mirror,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              // ignore: prefer_const_literals_to_create_immutables
              colors: [
            Colors.lightBlue,
            Colors.blueAccent,
            Colors.greenAccent,
            Colors.white
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(
                image: AssetImage(
                  'assets/images/logo.png',
                ),
                fit: BoxFit.contain,
                width: 200,
              ),
              SizedBox(
                height: 15.0,
              ),
              Center(
                child: SpinKitWave(
                    duration: Duration(seconds: 2),
                    color: Colors.red,
                    size: 60),
              )
            ],
          ),
        ),
      ),
    );
  }
}
