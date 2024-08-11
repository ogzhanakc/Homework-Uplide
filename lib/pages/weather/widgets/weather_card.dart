// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_homework_uplide/core/init/routes/app_router.dart';
import 'package:flutter_homework_uplide/pages/weather/model/weather_model.dart';
import 'package:flutter_homework_uplide/pages/weather/view_model/weather_view_model.dart';


class WeatherCard extends StatelessWidget {
  final WeatherModel weatherModel;
  WeatherCard({
    super.key,
    required this.weatherModel,
  });
  final viewModel = WeatherViewModel();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        
        context.router.push(WeatherDetailRoute(weatherModel: weatherModel));
      },
      child: Card(
        child: Column(
          children: [
            Text(weatherModel.city),
            Text(weatherModel.temp.toString()),
            Text(weatherModel.weather),
          ],
        ),
      ),
    );
  }
}
