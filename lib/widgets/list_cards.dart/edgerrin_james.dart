import 'package:flutter/material.dart';

import '../widgets.dart';

class EdgerrinJames extends StatelessWidget {
  const EdgerrinJames(
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
                  'EDGERRIN JAMES',
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
                    Image.asset('assets/images/edgerrin_james.png'),
                    const SizedBox(
                      height: 43,
                    ),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Position: RB",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text("Years Played: 1999-2009",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text(
                              "Teams: Indianapolis Colts, Arizona Cardinals, Seattle Seahawks",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text(
                              "Accomplishments: Hall of Fame, 4x Pro Bowl, 1x All-Pro, HOF All-2000s Team, 1999 AP ORoY",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text(
                              "A staple of the Peyton Manning-era Colts offenses that ranked with the best in NFL history, Edgerrin James was dangerous as a rusher and receiver. James had more than 15,000 scrimmage yards in his career and over 90 total touchdowns, forcing defenses to respect him along to free up space for their receiving corps.",
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
