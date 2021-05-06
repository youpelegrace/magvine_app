import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottonApp extends StatelessWidget {
  const CustomBottonApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
          color: Color(0xffE3E3E3),
          height: 86,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("images/Home.png"),
                SvgPicture.asset("assets/Search.svg.svg"),
                SvgPicture.asset("assets/Bookmark.svg.svg"),
                Image.asset("images/Ellipse2.png"),
              ],
            ),
          )),
    );
  }
}
