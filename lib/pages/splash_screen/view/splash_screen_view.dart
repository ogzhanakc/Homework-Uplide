import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';


@RoutePage()
class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}