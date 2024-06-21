import 'package:flutter/material.dart';

import '../widgets.dart';

class DemarcusWare extends StatelessWidget {
  const DemarcusWare(
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
                  'DEMARCUS WARE',
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
                    Image.asset('assets/images/demarcus_ware.png'),
                    const SizedBox(
                      height: 43,
                    ),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Position: LB",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text("Years Played: 2005-2016",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text("Teams: Dallas Cowboys, Denver Broncos",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text(
                              "Accomplishments: 9x Pro Bowl, 4x All-Pro, Super Bowl champion, HOF All-2000s Team",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text(
                              "DeMarcus Ware was great at getting after the quarterback in an era that featured some of the best quarterbacks to ever play in the NFL. Ware ended his career in the top 10 in sacks, finishing ahead of all-time greats such as John Randle and even Lawrence Taylor in that department.",
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
