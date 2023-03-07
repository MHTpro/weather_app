import 'package:flutter/material.dart';
import 'package:new_project/pages/weather_page.dart';
import './pages/main_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: OpenUpwardsPageTransitionsBuilder()
          },
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: <String, WidgetBuilder>{
        "/": (context) => const MainPage(),
        "/w": (context) => const Weather(),
        "/c1": (context) => const CityOne(),
        "/c2": (context) => const CityTwo(),
        "/c3": (context) => const CityThree(),
        "/c4": (context) => const CityFour(),
        "/c5": (context) => const CityFive(),
        "/c6": (context) => const CitySix(),
        "/c7": (context) => const CitySeven(),
      },
    );
  }
}
