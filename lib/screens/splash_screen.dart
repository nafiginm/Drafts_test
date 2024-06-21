import 'dart:async';

import 'package:flutter/material.dart';

import 'screens.dart';

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
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splash.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Loading',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: MediaQuery.of(context).size.width * 0.09,
                color: const Color(0xff1E1E1E),
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(
              height: 64,
            )
          ],
        ),
      ),
    );
  }
}
