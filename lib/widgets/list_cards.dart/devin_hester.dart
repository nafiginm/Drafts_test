import 'package:flutter/material.dart';

import '../widgets.dart';

class DevinHester extends StatelessWidget {
  const DevinHester(
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
                  'DEVIN HESTER',
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
                    Image.asset('assets/images/devin_hester.png'),
                    const SizedBox(
                      height: 43,
                    ),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Position: KR/PR/WR",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text("Years Played: 2006-2016",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text("Teams: Chicago Bears, Atlanta Falcons",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text(
                              "Accomplishments: 4x Pro Bowl, 3x All-Pro, HOF All-2000s Team, HOF All-2010s Team",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text(
                              "There has never been a better returner in NFL history than Devin Hester, earning him a spot in our top 100 NFL players of all-time. Hester returned 14 punts and five kickoffs for touchdowns in his career, as he helped the Chicago Bears reach a Super Bowl with his escapability, instincts and speed.",
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
