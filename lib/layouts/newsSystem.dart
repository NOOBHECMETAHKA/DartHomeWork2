import 'package:flutter/material.dart';
import 'package:homework/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewsLayout extends StatelessWidget {
  const NewsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Meditate',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: fontSizeButtons),
                        ),
                        SvgPicture.asset("assets/loop.svg")
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                height: 3,
                color: Colors.grey,
              ),

              //Список
              Container(
                height: 55,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    tabItemNews(
                        background: greenColor,
                        fontColor: Colors.white,
                        text: "All"),
                    tabItemNews(
                        background: lightGreenColor,
                        fontColor: greenColor,
                        text: "Bible In a Year"),
                    tabItemNews(
                        background: lightGreenColor,
                        fontColor: greenColor,
                        text: "Dailies"),
                    tabItemNews(
                        background: lightGreenColor,
                        fontColor: greenColor,
                        text: "Minutes"),
                    tabItemNews(
                        background: lightGreenColor,
                        fontColor: greenColor,
                        text: "November"),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Container(
                            width: 350,
                            child: SvgPicture.asset("assets/sun.svg"),
                            decoration: BoxDecoration(
                                color: goldColor,
                                borderRadius: BorderRadius.circular(25)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'A Song of Moon',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: fontSizeButtons,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: Text('Start with the basics'),
                              ),

                              //Icons
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                      child: Icon(
                                        Icons.favorite_border_outlined,
                                        size: 15,
                                      ),
                                    ),
                                    Text('9 Sessions',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        )),
                                    Spacer(),
                                    Text('Start',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        )),
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                      child: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: darkVioletColor,
                                        size: 15,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ]),
                ),
              ),

              //Wrap 4 элемента
              Container(
                height: 382,
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 1.0,
                  children: <Widget>[
                    MiniCardViewNews(
                      backgroundUpPanel: orangeColor,
                      title: 'The Sleep Hour',
                      description: 'Ashna Mukherjee',
                      image: 'birds',
                    ),
                    MiniCardViewNews(
                      backgroundUpPanel: goldColor,
                      title: 'Easy on the Mission',
                      description: 'Peter Mach',
                      image: 'moon',
                    ),
                    MiniCardViewNews(
                      backgroundUpPanel: blueColor,
                      title: 'The Sleep Hour',
                      description: 'Ashna Mukherjee',
                      image: 'planet',
                    ),
                    MiniCardViewNews(
                      backgroundUpPanel: greenColor,
                      title: 'The Sleep Hour',
                      description: 'Ashna Mukherjee',
                      image: 'birds_green',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MiniCardViewNews extends StatelessWidget {
  Color? backgroundUpPanel;
  String title;
  String description;
  String image;

  MiniCardViewNews({
    this.backgroundUpPanel,
    required this.title,
    required this.description,
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              //Image
              Expanded(
                  child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Image.asset("assets/$image.png"),
                ),
                decoration: BoxDecoration(
                    color: backgroundUpPanel,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(description),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                          child: Icon(
                            Icons.favorite_border_outlined,
                            size: 15,
                          ),
                        ),
                        Text('9 Sessions',
                            style: TextStyle(
                              color: Colors.grey,
                            )),
                        Spacer(),
                        Text('Start',
                            style: TextStyle(
                              color: Colors.grey,
                            )),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: darkVioletColor,
                            size: 15,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class tabItemNews extends StatelessWidget {
  // Color background = lightGreenColor;
  // Color fontColor = Colors.white;
  // String text = "Null";

  Color? background;
  Color? fontColor;
  String text;

  tabItemNews({
    this.background,
    this.fontColor,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
        child: Text(
          text,
          style: TextStyle(color: fontColor),
        ),
      ),
      decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.all(Radius.circular(20))),
    );
  }
}
