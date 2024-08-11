import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WeatherViewActionButton extends StatelessWidget {
  const WeatherViewActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed:
          (){
           
          },
      child: Icon(Icons.history),
    );
  }
}
