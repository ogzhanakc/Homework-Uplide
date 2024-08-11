// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeView();
    },
  );
}

/// generated route for
/// [LocalWeatherView]
class LocalWeatherRoute extends PageRouteInfo<void> {
  const LocalWeatherRoute({List<PageRouteInfo>? children})
      : super(
          LocalWeatherRoute.name,
          initialChildren: children,
        );

  static const String name = 'LocalWeatherRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LocalWeatherView();
    },
  );
}

/// generated route for
/// [SplashScreenView]
class SplashScreenRoute extends PageRouteInfo<void> {
  const SplashScreenRoute({List<PageRouteInfo>? children})
      : super(
          SplashScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreenRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashScreenView();
    },
  );
}

/// generated route for
/// [WeatherDetailView]
class WeatherDetailRoute extends PageRouteInfo<WeatherDetailRouteArgs> {
  WeatherDetailRoute({
    required WeatherModel weatherModel,
    List<PageRouteInfo>? children,
  }) : super(
          WeatherDetailRoute.name,
          args: WeatherDetailRouteArgs(weatherModel: weatherModel),
          initialChildren: children,
        );

  static const String name = 'WeatherDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<WeatherDetailRouteArgs>();
      return WeatherDetailView(weatherModel: args.weatherModel);
    },
  );
}

class WeatherDetailRouteArgs {
  const WeatherDetailRouteArgs({required this.weatherModel});

  final WeatherModel weatherModel;

  @override
  String toString() {
    return 'WeatherDetailRouteArgs{weatherModel: $weatherModel}';
  }
}
