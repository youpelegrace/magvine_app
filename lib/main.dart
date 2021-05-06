import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:magvine_app/widgets/bottomapp.dart';
import 'package:magvine_app/widgets/textcard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: new MagVine());
  }
}

class MagVine extends StatefulWidget {
  @override
  _MagVineState createState() => _MagVineState();
}

class _MagVineState extends State<MagVine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        bottomNavigationBar: CustomBottonApp(),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 55, left: 20, right: 20),
            child: ListView(
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Row(
                    children: [
                      Image.asset("images/Frame.png.png"),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "MAG",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontFamily: "Fanwood Text",
                                fontWeight: FontWeight.w400)),
                        TextSpan(
                            text: "VINE",
                            style: TextStyle(
                                color: Color(0xff3238C2),
                                fontSize: 22,
                                fontFamily: "Fanwood Text",
                                fontWeight: FontWeight.w400))
                      ])),
                      SizedBox(
                        width: 200,
                      ),
                      SvgPicture.asset("assets/Notification.svg.svg")
                    ],
                  ),
                  SizedBox(
                    height: 56,
                  ),
                  Text(
                    "RECOMMENDED FOR YOU",
                    style: TextStyle(color: Color(0xff454545)),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            Image.asset("images/flowers.png.png"),
                            SizedBox(
                              width: 12,
                            ),
                            Image.asset("images/girl.png.png"),
                            SizedBox(
                              width: 12,
                            ),
                            Image.asset("images/flower2.png.png")
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 34,
                  ),
                  Text(
                    "TODAY’S DIGEST",
                    style: TextStyle(fontFamily: "Inter"),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Image.asset("images/first.png.png"),
                      SizedBox(
                        width: 16,
                      ),
                      TextCard(
                        text1: "Lulu Nwenyi",
                        text2: "The Deficiency Called Life",
                        text3: "21 March",
                        text4: "3 min read",
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      Image.asset("images/plainflower.png.png"),
                      SizedBox(
                        width: 16,
                      ),
                      TextCard(
                        text1: "Meerah M",
                        text2: "The Vamp’s Rose",
                        text3: "14 March",
                        text4: "20 min read",
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      Image.asset("images/girl2.png.png"),
                      SizedBox(
                        width: 16,
                      ),
                      TextCard(
                        text1: "The UX Girl",
                        text2: "Ux Beginner Bible",
                        text3: "2 March",
                        text4: "5 min read",
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      Image.asset("images/box.png.png"),
                      SizedBox(
                        width: 16,
                      ),
                      TextCard(
                        text1: "Being Mimi",
                        text2: "I Started My Vlog",
                        text3: "2 March",
                        text4: "5 min read",
                      )
                    ],
                  ),
                ]),
              ],
            ),
          ),
        ));
  }
}
