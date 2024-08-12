import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_homework_uplide/core/constants/app_constants.dart';
import 'package:flutter_homework_uplide/pages/weather/model/weather_model.dart';
import 'package:flutter_homework_uplide/pages/weather/widgets/weather_card.dart';

@RoutePage()
class WeatherDetailView extends StatelessWidget {
  final WeatherModel weatherModel;
  const WeatherDetailView({required this.weatherModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Weather View Detail"),
        ),
        body: SizedBox(
          height: AppConstants().screenHeight(context)/2,
          width: AppConstants().screenWidth(context),
          child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.sunny,
                    //color: Colors.yellow,
                  ),
                ),
                WeatherText(text: weatherModel.city),
                WeatherText(text: weatherModel.weather),
                WeatherText(text: weatherModel.temp.toString()),
            ],
          ),
                ),
        ),);
  }
}
