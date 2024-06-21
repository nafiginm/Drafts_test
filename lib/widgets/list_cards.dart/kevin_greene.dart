import 'package:flutter/material.dart';

import '../widgets.dart';

class KevinGreene extends StatelessWidget {
  const KevinGreene(
      {super.key, required this.nextPage, required this.backPage});

  final backPage;
  final nextPage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: backPage,
              child: Image.asset(
                'assets/images/back.png',
                height: MediaQuery.of(context).size.width * 0.10,
              ),
            ),
          ],
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 11,
                ),
                Text(
                  'KEVIN GREENE',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: MediaQuery.of(context).size.width * 0.074,
                      ),
                ),
                const SizedBox(
                  height: 39,
                ),
                Column(
                  children: [
                    Image.asset('assets/images/kevin_greene.png'),
                    const SizedBox(
                      height: 43,
                    ),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Position: LB/DE",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text("Years Played: 1985-1999",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text(
                              "Teams: Los Angeles Rams, Pittsburgh Steelers, Carolina Panthers, San Francisco 49ers",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text(
                              "Accomplishments: Hall of Fame, 5x Pro Bowl, 2x All-Pro, HOF All-1990s Team",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text(
                              "The career of defensive end Kevin Greene was nothing short of astounding, as he combined production with longevity in an impressive way.",
                              style: Theme.of(context).textTheme.bodySmall),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 42,
        ),
        GestureDetector(
          onTap: nextPage,
          child: const Button(
            text: 'NEXT',
          ),
        ),
      ],
    );
  }
}
