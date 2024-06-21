import 'package:flutter/material.dart';

import '../widgets.dart';

class TimBrown extends StatelessWidget {
  const TimBrown({super.key, required this.nextPage, required this.backPage});

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
                  'TIM BROWN',
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
                    Image.asset('assets/images/tim_brown.png'),
                    const SizedBox(
                      height: 43,
                    ),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Position: WR",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text("Years Played: 1988-2004",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text(
                              "Teams: Los Angeles/Oakland Raiders, Tampa Bay Buccaneers",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text(
                              "Accomplishments: Hall of Fame, 9x Pro Bowl, HOF All-1990s Team",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text(
                              "Tim Brown played most of his career during an era of the NFL where passing offenses were not as prolific as they are today. But Brown still finds himself in the top 10 on the all-time receptions list in league history.",
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
