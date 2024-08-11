import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_homework_uplide/pages/splash_screen/view_model/splash_screen_view_model.dart';
import 'package:provider/provider.dart';

@RoutePage()
class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<SplashScreenViewModel>(context, listen: false).routeToHome(context);
    return Consumer<SplashScreenViewModel>(
      builder: (context, viewModel, child){
        return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
      }
    
    );
  }
}
