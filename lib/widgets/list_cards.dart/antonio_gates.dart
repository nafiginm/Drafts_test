import 'package:flutter/material.dart';

import '../widgets.dart';

class AntonioGates extends StatelessWidget {
  const AntonioGates(
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
                  'ANTONIO GATES',
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
                    Image.asset('assets/images/antonio_gates.png'),
                    const SizedBox(
                      height: 43,
                    ),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Position: TE",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text("Years Played: 2003-2018",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text("Teams: San Diego/Los Angeles Chargers",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text(
                              "Accomplishments: 8x Pro Bowl, 3x All-Pro, HOF All-2000s Team",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text(
                              "Antonio Gates spent a decade and a half in the NFL, and was incredibly effective during that time period. Gates used his background in basketball to carve out space in the red zone, racking up 116 receiving touchdowns in his illustrious career.",
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
