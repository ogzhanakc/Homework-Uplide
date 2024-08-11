import 'package:auto_route/auto_route.dart';
import 'package:flutter_homework_uplide/pages/home/view/home_view.dart';
import 'package:flutter_homework_uplide/pages/splash_screen/view/splash_screen_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashScreenRoute.page, initial: true),
        AutoRoute(page: HomeRoute.page),
      ];
}
