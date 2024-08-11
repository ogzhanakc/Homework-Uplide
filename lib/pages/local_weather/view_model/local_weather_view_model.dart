import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_homework_uplide/core/constants/enums/cache_keys.dart';
import 'package:flutter_homework_uplide/core/init/cache/cache_manager.dart';
import 'package:flutter_homework_uplide/core/init/get_it/app_get_it.dart';
import 'package:flutter_homework_uplide/pages/weather/model/weather_model.dart';

class LocalWeatherViewModel extends ChangeNotifier {
  final CacheManager _cacheManager = locator<CacheManager>();

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<WeatherModel> _localWeatherList = [];
  List<WeatherModel> get weatherList => _localWeatherList;

  Future<List<String>> getLocalWeather() async {
    return await _cacheManager.getStringList(CacheKeys.WEATHERS);
  }

  Future<void> setList() async {
    _isLoading = true;

    List<String> localList =
        await _cacheManager.getStringList(CacheKeys.WEATHERS);
    _localWeatherList = [];
    for (String localWeather in localList) {
      WeatherModel weather =
          WeatherModel.fromLocalJson(jsonDecode(localWeather));

      _localWeatherList.add(weather);
    }

    _isLoading = false;
    notifyListeners();
  }
}
