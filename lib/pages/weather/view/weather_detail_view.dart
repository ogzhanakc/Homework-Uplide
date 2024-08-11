import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_homework_uplide/pages/weather/model/weather_model.dart';

@RoutePage()
class WeatherDetailView extends StatefulWidget {
  final WeatherModel weatherModel;
  const WeatherDetailView({required this.weatherModel});

  @override
  State<WeatherDetailView> createState() => _WeatherDetailViewState();
}

class _WeatherDetailViewState extends State<WeatherDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Weather View Detail"),
        ),
        body: Card(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(widget.weatherModel.city),
            Text(widget.weatherModel.temp.toString()),
            Text(widget.weatherModel.weather),
          ],
        ),
      ),);
  }
}
