import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/widgets.dart';
import 'screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyWithBackgroundImage(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.width * 0.57),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const ListCardsScreen(),
                ),
              );
            },
            child: const Button(
              text: 'BEST PLAYERS',
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.14,
          ),
          GestureDetector(
            onTap: () {
              if (Platform.isAndroid) {
                SystemNavigator.pop();
              } else if (Platform.isIOS) {
                exit(0);
              }
            },
            child: const Button(
              text: 'EXIT',
            ),
          ),
        ],
      ),
    );
  }
}
