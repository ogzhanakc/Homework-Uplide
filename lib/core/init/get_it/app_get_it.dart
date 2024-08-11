  import 'package:flutter_homework_uplide/pages/weather/service/weather_service.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

  void setupLocator() {
 locator.registerFactory<WeatherService>(() => WeatherService());

  }
