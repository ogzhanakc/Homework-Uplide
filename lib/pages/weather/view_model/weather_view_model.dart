import 'package:flutter/material.dart';
import 'package:flutter_homework_uplide/core/init/get_it/app_get_it.dart';
import 'package:flutter_homework_uplide/pages/weather/model/weather_model.dart';
import 'package:flutter_homework_uplide/pages/weather/service/weather_service.dart';

class WeatherViewModel extends ChangeNotifier{
    final WeatherService _weatherService = locator<WeatherService>();


  bool _isLoading = false;
  bool get isLoading => _isLoading;

  
  List<WeatherModel> _weatherList = [];
  List<WeatherModel> get weatherList => _weatherList;

  List<String> cityList = [
    'London,uk',
    'Istanbul,tr',
    'Ankara,tr',
    'Kayseri,tr',
    'Izmir,tr'
  ];


  Future<void> fetchWeather() async {
    _isLoading = true;
    
      for (String city in cityList) {
        final response = await _weatherService.getWeather(city);
        WeatherModel? weatherModel = WeatherModel.fromJson(response);

        
          _weatherList.add(weatherModel);
        
      }
   _isLoading = false;
   notifyListeners();
  }

}