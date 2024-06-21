import 'package:flutter/material.dart';

import '../widgets.dart';

class JJWatt extends StatelessWidget {
  const JJWatt({super.key, required this.nextPage, required this.backPage});

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
                  'J.J. WATT',
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
                    Image.asset('assets/images/j_j_watt.png'),
                    const SizedBox(
                      height: 43,
                    ),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Position: DE",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text("Years Played: 2011 - Present",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text("Teams: Houston Texans, Arizona Cardinals",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text(
                              "Accomplishments: 5x Pro Bowl, 5x All-Pro, HOF All-2010s Team, 3x AP DPoY",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text(
                              "J.J. Watt spent the bulk of his NFL career toiling for a less than stellar franchise in the Houston Texans. But Watt was the bright spot of the franchise for years, racking up more than 100 sacks with the Texans. He was able to bat down passes at the line of scrimmage, and occasionally scored as an eligible receiver on offense.",
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
