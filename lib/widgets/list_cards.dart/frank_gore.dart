import 'package:flutter/material.dart';

import '../widgets.dart';

class FrankGore extends StatelessWidget {
  const FrankGore({super.key, required this.nextPage, required this.backPage});

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
                  'FRANK GORE',
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
                    Image.asset('assets/images/frank_gore.png'),
                    const SizedBox(
                      height: 43,
                    ),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Position: RB",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text("Years Played: 2005-2020",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text(
                              "Teams: San Francisco 49ers, Indianapolis Colts, Miami Dolphins, Buffalo Bills, New York Jets",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text(
                              "Accomplishments: 5x Pro Bowl, HOF All-2010s Team",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text(
                              "Longevity at the running back position is hard to come by in the modern era of the NFL, but Frank Gore exemplified it. Gore became one of three players in the history of the NFL to reach 16,000 rushing yards for his career. And while Gore was never considered the best running back in the league, he was always in the conversation.",
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
