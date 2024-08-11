import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_homework_uplide/core/init/routes/app_router.dart';

class WeatherViewActionButton extends StatelessWidget {
  const WeatherViewActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        context.router.push(LocalWeatherRoute());
      },
      child: Icon(Icons.history),
    );
  }
}
