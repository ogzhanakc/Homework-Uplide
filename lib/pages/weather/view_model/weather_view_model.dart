import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_homework_uplide/core/constants/enums/cache_keys.dart';
import 'package:flutter_homework_uplide/core/init/cache/cache_manager.dart';
import 'package:flutter_homework_uplide/core/init/get_it/app_get_it.dart';
import 'package:flutter_homework_uplide/pages/weather/model/weather_model.dart';
import 'package:flutter_homework_uplide/pages/weather/service/weather_service.dart';

class WeatherViewModel extends ChangeNotifier {
  final WeatherService _weatherService = locator<WeatherService>();
  final CacheManager _cacheManager =  locator<CacheManager>();

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

  Future<void> saveLocal(WeatherModel weatherModel) async {

    List<String> localList =
        await _cacheManager.getStringList(CacheKeys.WEATHERS);

    var modelToJson = weatherModel.toJson();
    String value = jsonEncode(modelToJson);
    localList.add(value);
    await _cacheManager.setStringList(CacheKeys.WEATHERS, localList);

    notifyListeners();
  }
}
