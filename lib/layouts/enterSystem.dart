import 'package:flutter/material.dart';
import 'package:homework/colors.dart';

class EnterLayout extends StatelessWidget {
  const EnterLayout({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: greenColor,
        body: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "medinow",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text("Meditate With Us!",
                      style: TextStyle(color: Colors.white, fontSize: 14)),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(
                        0, paddingButtons + 40, 0, paddingButtons),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/player');
                      },
                      child: Text("Sign in with Apple",
                          style: TextStyle(
                              fontSize: fontSizeButtons,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      style: ElevatedButton.styleFrom(
                          minimumSize: buttonSize,
                          primary: Colors.white,
                          elevation: 0,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)))),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: paddingButtons),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/news');
                      },
                      child: Text("Continue with Email or Phone",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: fontSizeButtons,
                              fontWeight: FontWeight.bold)),
                      style: ElevatedButton.styleFrom(
                          minimumSize: buttonSize,
                          primary: lightGreenColor,
                          elevation: 0,
                          shape:const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)))),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: paddingButtons),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/player');
                      },
                      child: Text("Continue With Google",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: fontSizeButtons,
                              fontWeight: FontWeight.bold)),
                      style: ElevatedButton.styleFrom(
                          minimumSize: buttonSize,
                          primary: Color.fromARGB(0, 0, 0, 0),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)))),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Center(child: Image.asset("assets/guy.png")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
