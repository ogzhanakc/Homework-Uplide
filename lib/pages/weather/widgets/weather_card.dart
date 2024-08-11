import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_homework_uplide/core/init/routes/app_router.dart';
import 'package:flutter_homework_uplide/pages/weather/model/weather_model.dart';
import 'package:flutter_homework_uplide/pages/weather/view_model/weather_view_model.dart';
import 'package:provider/provider.dart';

class WeatherCard extends StatelessWidget {
  final WeatherModel weatherModel;
  WeatherCard({
    super.key,
    required this.weatherModel,
  });
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<WeatherViewModel>(context);
    return InkWell(
      onTap: () {
        viewModel.saveLocal(weatherModel);
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
