import 'package:flutter_homework_uplide/core/init/cache/cache_manager.dart';
import 'package:flutter_homework_uplide/pages/profile/service/profile_service.dart';
import 'package:flutter_homework_uplide/pages/weather/service/weather_service.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerFactory<WeatherService>(() => WeatherService());
  locator.registerFactory<ProfileService>(() => ProfileService());
  locator.registerSingletonAsync<CacheManager>(() async {
    final cacheManager = CacheManager();
    await cacheManager.init();
    return cacheManager;
  });
}
