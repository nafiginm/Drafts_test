import 'package:flutter/material.dart';

import '../widgets.dart';

class JasonWitten extends StatelessWidget {
  const JasonWitten(
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
                  'JASON WITTEN',
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
                    Image.asset('assets/images/jason_witten.png'),
                    const SizedBox(
                      height: 43,
                    ),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Position: TE",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text("Years Played: 2003-2020",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text("Teams: Dallas Cowboys, Las Vegas Raiders",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text("Accomplishments: 11x Pro Bowl, 2x All-Pro",
                              style: Theme.of(context).textTheme.bodySmall),
                          Text(
                              "Jason Witten was another standout from the golden age of receiving tight ends in the NFL. Witten spent most of his career with the Dallas Cowboys, catching more than 1,200 passes to rank in the top five in NFL history in receptions when his career was done.",
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
