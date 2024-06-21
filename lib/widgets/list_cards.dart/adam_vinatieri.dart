import 'package:flutter/material.dart';

import '../widgets.dart';

class AdamVinatieri extends StatelessWidget {
  const AdamVinatieri(
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
              children: [
                const SizedBox(
                  height: 11,
                ),
                Text(
                  'ADAM VINATIERI',
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
                    Image.asset('assets/images/adam_vinatieri.png'),
                    const SizedBox(
                      height: 43,
                    ),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Position: K",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text("Years Played: 1996-2019",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text(
                              "Teams: New England Patriots, Indianapolis Colts",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text(
                              "Accomplishments: 3x Pro Bowl, 3x All-Pro, 4x Super Bowl champion, HOF All-2000s Team",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text(
                              "Prior to Justin Tucker making his way up the charts of the best kickers in the history of the NFL, Adam Vinatieri held the honor of being the best kicker of all-time — and the best in clutch situations. ",
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
