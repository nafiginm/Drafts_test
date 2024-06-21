import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height / 15,
      width: MediaQuery.of(context).size.width / 2,
      decoration: const BoxDecoration(
        color: Color(0xff70EC6D),
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: MediaQuery.of(context).size.width * 0.056,
              color: Colors.black,
            ),
        softWrap: true,
        textAlign: TextAlign.center,
      ),
    );
  }
}
