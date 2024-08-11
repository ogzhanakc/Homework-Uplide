import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_homework_uplide/core/constants/app_constants.dart';
import 'package:flutter_homework_uplide/pages/local_weather/view_model/local_weather_view_model.dart';
import 'package:flutter_homework_uplide/pages/weather/widgets/weather_card.dart';
import 'package:provider/provider.dart';

@RoutePage()
class LocalWeatherView extends StatefulWidget {
  const LocalWeatherView({super.key});

  @override
  State<LocalWeatherView> createState() => _LocalWeatherViewState();
}

class _LocalWeatherViewState extends State<LocalWeatherView> {
  @override
  Widget build(BuildContext context) {
    Provider.of<LocalWeatherViewModel>(context, listen: false).setList();
    return Scaffold(
      appBar: AppBar(
        title: Text("Local Weather View"),
      ),
      body: Consumer<LocalWeatherViewModel>(
        builder: (context, viewModel, child) {
          if (viewModel.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (viewModel.weatherList.isEmpty) {
            return const Center(child: Text('No Local Data'));
          }
          return SizedBox(
            height: AppConstants().screenHeight(context),
            child: ListView.builder(
              itemCount: viewModel.weatherList.length,
              itemBuilder: (context, index) {
                var weather = viewModel.weatherList[index];
                return WeatherCard(
                  weatherModel: weather,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
