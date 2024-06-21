import 'package:flutter/material.dart';

import '../widgets.dart';

class JuliusPeppers extends StatelessWidget {
  const JuliusPeppers(
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
                  'JULIUS PEPPERS',
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
                    Image.asset('assets/images/julius_peppers.png'),
                    const SizedBox(
                      height: 43,
                    ),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Position: DE",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text("Years Played: 2002-2018",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text(
                              "Teams: Carolina Panthers, Chicago Bears, Green Bay Packers",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text(
                              "Accomplishments: 9x Pro Bowl, 3x All-Pro, HOF All-2000s Team, HOF All-2010s Team, 2002 AP Defensive Rookie of the Year",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text(
                              "Julius Peppers was a great all-around defensive end, as he was able to create sacks on a consistent basis. But he was also able to force turnovers, notching 11 career interceptions and 21 fumble recoveries as a defensive lineman.",
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
