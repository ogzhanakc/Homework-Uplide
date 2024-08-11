import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_homework_uplide/pages/weather/view/weather_view.dart';


@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return WeatherView();
  }
}