import 'package:flutter/material.dart';
import 'package:new_project/methods/cloudy_weather.dart';
import '../methods/sunny_waether.dart';

class Weather extends StatefulWidget {
  const Weather({super.key});

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  @override
  Widget build(BuildContext context) {
    return sunnyWeather("THR", "/c1", "21");
  }
}

class CityOne extends StatefulWidget {
  const CityOne({super.key});

  @override
  State<CityOne> createState() => _CityOneState();
}

class _CityOneState extends State<CityOne> {
  @override
  Widget build(BuildContext context) {
    return sunnyWeather("NYC", "/c2", "-2");
  }
}

class CityTwo extends StatefulWidget {
  const CityTwo({super.key});

  @override
  State<CityTwo> createState() => _CityTwoState();
}

class _CityTwoState extends State<CityTwo> {
  @override
  Widget build(BuildContext context) {
    return cloudyWeather("GLN", "/c3", "10");
  }
}

class CityThree extends StatefulWidget {
  const CityThree({super.key});

  @override
  State<CityThree> createState() => _CityThreeState();
}

class _CityThreeState extends State<CityThree> {
  @override
  Widget build(BuildContext context) {
    return sunnyWeather(" L.A", "/c4", "12");
  }
}

class CityFour extends StatefulWidget {
  const CityFour({super.key});

  @override
  State<CityFour> createState() => _CityFourState();
}

class _CityFourState extends State<CityFour> {
  @override
  Widget build(BuildContext context) {
    return cloudyWeather(" ISL", "/c5", "-8");
  }
}

class CityFive extends StatefulWidget {
  const CityFive({super.key});

  @override
  State<CityFive> createState() => _CityFiveState();
}

class _CityFiveState extends State<CityFive> {
  @override
  Widget build(BuildContext context) {
    return cloudyWeather("SFO", "/c6", "01");
  }
}

class CitySix extends StatefulWidget {
  const CitySix({super.key});

  @override
  State<CitySix> createState() => _CitySixState();
}

class _CitySixState extends State<CitySix> {
  @override
  Widget build(BuildContext context) {
    return cloudyWeather("VAN", "/c7", "-9");
  }
}

class CitySeven extends StatefulWidget {
  const CitySeven({super.key});

  @override
  State<CitySeven> createState() => _CitySevenState();
}

class _CitySevenState extends State<CitySeven> {
  @override
  Widget build(BuildContext context) {
    return sunnyWeather(" ISF", "/w", "15");
  }
}
