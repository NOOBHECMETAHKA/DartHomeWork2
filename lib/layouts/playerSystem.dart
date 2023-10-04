import 'package:flutter/material.dart';
import 'package:homework/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlayerLayout extends StatelessWidget {
  const PlayerLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                child: Container(
                  child: Image.asset("assets/lake.png"),
                  decoration: BoxDecoration(
                      color: goldColor,
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Text
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Text("Peter Mach",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            color: Colors.grey, fontSize: fontSizeButtons - 5)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Text(
                      "Mind Deep Relax",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: fontSizeButtons),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Text(
                      text,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.black, fontSize: fontSizeButtons),
                    ),
                  ),

                  Center(
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: paddingButtons),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/play.svg"),
                            Text("Play Next Session",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: fontSizeButtons,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            minimumSize: buttonSize,
                            primary: greenColor,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)))),
                      ),
                    ),
                  ),

                  Column(
                    children: [
                      //Button 1
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  child: Container(
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                        SvgPicture.asset("assets/play.svg")
                                      ])),
                                  decoration: BoxDecoration(
                                      color: blueColor,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Sweet Memories',
                                        style: TextStyle(
                                            fontSize: fontSizeButtons,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text('December 29 Pre-Launch'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.keyboard_control_outlined,
                              color: Colors.grey,
                              size: 35,
                            )
                          ],
                        ),
                      ),

                      //Button 2
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  child: Container(
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                        SvgPicture.asset("assets/play.svg")
                                      ])),
                                  decoration: BoxDecoration(
                                      color: greenColor,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'A Day Dream',
                                        style: TextStyle(
                                            fontSize: fontSizeButtons,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text('December 29 Pre-Launch'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.keyboard_control_outlined,
                              color: Colors.grey,
                              size: 35,
                            )
                          ],
                        ),
                      ),

                      //Button 3
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  child: Container(
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                        SvgPicture.asset("assets/play.svg")
                                      ])),
                                  decoration: BoxDecoration(
                                      color: orangeColor,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Mind Explore',
                                        style: TextStyle(
                                            fontSize: fontSizeButtons,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text('December 29 Pre-Launch'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.keyboard_control_outlined,
                              color: Colors.grey,
                              size: 35,
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
