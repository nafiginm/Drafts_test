import 'package:flutter/material.dart';

import '../widgets.dart';

class PaulKrause extends StatelessWidget {
  const PaulKrause({super.key, required this.nextPage, required this.backPage});

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
                  'PAUL KRAUSE',
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
                    Image.asset('assets/images/paul_krause.png'),
                    const SizedBox(
                      height: 43,
                    ),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Position: DB/WR",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text("Years Played: 1964-1979",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text("Teams: Washington Redskins, Minnesota Vikings",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text(
                              "Accomplishments: Hall of Fame, 8x Pro Bowl, 3x All-Pro, Super Bowl champion",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text(
                              "Paul Krause played in an era of the NFL where passing the ball was far less common than it is today. But Krause still managed to top the all-time interceptions list in the history of the NFL.",
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
