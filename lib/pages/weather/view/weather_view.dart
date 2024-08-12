import 'package:flutter/material.dart';
import 'package:flutter_homework_uplide/core/constants/app_constants.dart';
import 'package:flutter_homework_uplide/pages/weather/view_model/weather_view_model.dart';
import 'package:flutter_homework_uplide/pages/weather/widgets/weather_card.dart';
import 'package:provider/provider.dart';


class WeatherView extends StatefulWidget {
  const WeatherView({super.key});

  @override
  State<WeatherView> createState() => _WeatherViewState();
}

class _WeatherViewState extends State<WeatherView> {


  @override
  Widget build(BuildContext context) {
   Provider.of<WeatherViewModel>(context, listen: false).fetchWeather();
    return Consumer<WeatherViewModel>(
          builder: (context, viewModel, child) {
            if (viewModel.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (viewModel.weatherList.isEmpty) {
              return const Center(child: Text('No weather data'));
            }
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: AppConstants().screenHeight(context)/ 3,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: viewModel.weatherList.length,
                  itemBuilder: (context, index) {
                    var weather = viewModel.weatherList[index];
                    return WeatherCard(
                      weatherModel: weather,
                    );
                  },
                ),
              ),
            );
          },
        );
  }
}
