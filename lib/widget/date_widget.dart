import 'package:flutter/material.dart';

class DateBox extends StatelessWidget {
  final String title;
  final String text;
  final TextDirection direction;
  const DateBox(this.title, this.text, {super.key, this.direction=TextDirection.rtl});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffd04514),
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 0.5),
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: RichText(
        textDirection: direction,
        textAlign: TextAlign.center,
        text: TextSpan(
          style: const TextStyle(
            fontFamily: 'Sahel',
            fontSize: 14,
            color: Colors.white,
          ),
          text: '$title ',
          children: <TextSpan>[
            TextSpan(
              text: text,
              style: const TextStyle(
                fontFamily: 'Sahel',
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
