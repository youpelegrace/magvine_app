import 'package:flutter/material.dart';

class TextCard extends StatelessWidget {
  const TextCard({this.text1, this.text2, this.text3, this.text4});
  final String text1;
  final String text2;
  final String text3;
  final String text4;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text1,
          style: TextStyle(color: Color(0xff1E1E1E), fontFamily: "Lora"),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          text2,
          style: TextStyle(
              color: Color(0xff151515),
              fontWeight: FontWeight.bold,
              fontFamily: "Lora"),
        ),
        SizedBox(
          height: 4,
        ),
        Row(
          children: [
            Text(
              text3,
              style: TextStyle(color: Color(0xff4D4646), fontFamily: "Poppins"),
            ),
            SizedBox(
              width: 8,
            ),
            CircleAvatar(
              radius: 2,
              backgroundColor: Color(0xff4D4646),
            ),
            SizedBox(
              width: 8,
            ),
            Text(text4,
                style:
                    TextStyle(color: Color(0xff4D4646), fontFamily: "Poppins"))
          ],
        ),
      ],
    );
  }
}
