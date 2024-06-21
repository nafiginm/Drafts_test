import 'package:flutter/material.dart';

import '../widgets.dart';

class AdrianPeterson extends StatelessWidget {
  const AdrianPeterson(
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
                  'ADRIAN PETERSON',
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
                    Image.asset('assets/images/adrian_peterson.png'),
                    const SizedBox(
                      height: 43,
                    ),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Position: RB",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text("Years Played: 2007-2021",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text("Teams: Minnesota Vikings,",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text(
                              "Accomplishments: 7x Pro Bowl, 4x All-Pro, 2012 NFL MVP, HOF All-2010s Team, 2007 AP Offensive Rookie of the Year, 2012 AP Offensive Player of the Year, 2012 Comeback Player of the Year",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text(
                              "Adrian Peterson was so dominant at his peak at the running back position that he won an NFL MVP award during an era of the game’s history where that award was reserved almost exclusively for quarterbacks.",
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
