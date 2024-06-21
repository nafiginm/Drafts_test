import 'package:flutter/material.dart';

import '../widgets.dart';

class DarrelGreen extends StatelessWidget {
  const DarrelGreen(
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
                  'DARRELL GREEN',
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
                    Image.asset('assets/images/darrell_green.png'),
                    const SizedBox(
                      height: 43,
                    ),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Position: DB",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text("Years Played: 1983-2002",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text("Teams: Washington Redskins",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text(
                              "Accomplishments: Hall of Fame, 7x Pro Bowl, 1x All-Pro, 2x Super Bowl champion, HOF All-1990s Team",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text(
                              "Darrell Green played a major role on the Washington Redskins teams that were consistent contenders and multiple-time Super Bowl champions. Green notched 54 career interceptions, and helped bolster the back end of a Washington defense whose job was made much easier by the Redskins’ clock-munching running game.",
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
