import 'package:flutter_homework_uplide/core/init/cache/cache_manager.dart';
import 'package:flutter_homework_uplide/pages/weather/service/weather_service.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerFactory<WeatherService>(() => WeatherService());
  locator.registerFactory<CacheManager>(() => CacheManager());
}
