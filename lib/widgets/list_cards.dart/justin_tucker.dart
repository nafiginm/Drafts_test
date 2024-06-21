import 'package:flutter/material.dart';

import '../widgets.dart';

class JustinTucker extends StatelessWidget {
  const JustinTucker(
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
                  'JUSTIN TUCKER',
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
                    Image.asset('assets/images/justin_tucker.png'),
                    const SizedBox(
                      height: 43,
                    ),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Position: K",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text("Years Played: 2012-2021",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text("Teams: Baltimore Ravens",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text(
                              "Accomplishments: 4x Pro Bowl, 4x All-Pro, Super Bowl champion, HOF All-2010s Team",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text(
                              "Justin Tucker is the best kicker in the history of the NFL. He has converted more than 90% of his career field goal attempts, and holds the record for the longest field goal in league history with a successful boot from 66 yards.",
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
            text: 'TO MENU',
          ),
        ),
      ],
    );
  }
}
