import 'package:flutter/material.dart';
import 'package:flutter_homework_uplide/pages/weather/view_model/weather_view_model.dart';
import 'package:flutter_homework_uplide/pages/weather/widgets/weather_card.dart';
import 'package:flutter_homework_uplide/pages/weather/widgets/weather_view_action_button.dart';
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Weather View"),
          centerTitle: true,
        ),
        floatingActionButton: const WeatherViewActionButton(),
        body: Consumer<WeatherViewModel>(
          builder: (context, viewModel, child) {
            if (viewModel.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (viewModel.weatherList.isEmpty) {
              return const Center(child: Text('No weather data'));
            }
            return ListView.builder(
              itemCount: viewModel.weatherList.length,
              itemBuilder: (context, index) {
                var weather = viewModel.weatherList[index];
                return WeatherCard(
                  weatherModel: weather,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
