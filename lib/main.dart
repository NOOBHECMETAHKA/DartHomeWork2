import 'package:flutter/material.dart';
//files
import 'layouts/enterSystem.dart';
import 'layouts/playerSystem.dart';
import 'layouts/newsSystem.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    // onGenerateRoute: (settings) {
    //   return switch (settings.name) {
    //     "/player" => MaterialPageRoute(builder: (_) => const PlayerLayout()),
    //     "/" => MaterialPageRoute(builder: (_) => const EnterLayout()),
    //     "/news" => MaterialPageRoute(builder: (_) => const NewsLayout()),
    //     _ => MaterialPageRoute(builder: (_) => const Placeholder())
    //   };
    // },
    routes: {
      '/player': (context) => const PlayerLayout(),
      '/': (context) => const EnterLayout(),
      '/news': (context) => const NewsLayout(),
    },
  ));
}
