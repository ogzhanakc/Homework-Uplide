import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_homework_uplide/core/constants/app_constants.dart';
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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: SizedBox(
            width: AppConstants().screenWidth(context) / 3.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.sunny,

                  ),
                ),
                WeatherText(text: weatherModel.city),
                WeatherText(text: weatherModel.weather),
                WeatherText(text: "${(weatherModel.temp-273).floorToDouble()} Celcius"),
        
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WeatherText extends StatelessWidget {
  const WeatherText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(text,textAlign: TextAlign.center,),
    );
  }
}


