import 'dart:async';

import 'package:flutter/material.dart';

import 'ChooseLoginType.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const DashBoardScreen(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.teal.shade400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/ambulance.png',
            width: 150,
            height: 250,
          )
        ],
      ),
    ));
  }
}
