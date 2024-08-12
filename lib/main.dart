import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_homework_uplide/core/init/get_it/app_get_it.dart';
import 'package:flutter_homework_uplide/core/init/routes/app_router.dart';
import 'package:flutter_homework_uplide/core/init/theme/app_theme.dart';
import 'package:flutter_homework_uplide/pages/local_weather/view_model/local_weather_view_model.dart';
import 'package:flutter_homework_uplide/pages/profile/view_model/profile_view_model.dart';
import 'package:flutter_homework_uplide/pages/splash_screen/view_model/splash_screen_view_model.dart';
import 'package:flutter_homework_uplide/pages/weather/view_model/weather_view_model.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  await dotenv.load(fileName: '.env');
  setupLocator();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => WeatherViewModel()),
        ChangeNotifierProvider(create: (_) => LocalWeatherViewModel()),
        ChangeNotifierProvider(create: (_) => SplashScreenViewModel()),
        ChangeNotifierProvider(create: (_) => ProfileViewModel()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final appRouter = AppRouter();
  MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme().appTheme,
      routerConfig: appRouter.config(),
    );
  }
}
