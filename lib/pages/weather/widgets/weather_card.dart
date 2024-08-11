import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_homework_uplide/core/constants/app_constants.dart';
import 'package:flutter_homework_uplide/core/init/routes/app_router.dart';
import 'package:flutter_homework_uplide/pages/weather/model/weather_model.dart';
import 'package:flutter_homework_uplide/pages/weather/view_model/weather_view_model.dart';
import 'package:provider/provider.dart';

class WeatherCard extends StatelessWidget {
  final WeatherModel weatherModel;
  WeatherCard({
    super.key,
    required this.weatherModel,
  });
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<WeatherViewModel>(context);
    return InkWell(
      onTap: () {
        viewModel.saveLocal(weatherModel);
        context.router.push(WeatherDetailRoute(weatherModel: weatherModel));
      },
      child: Card(
          color: const Color.fromARGB(255, 206, 234, 255),
        
        child: Container(
          width: AppConstants().screenWidth(context) / 3.5,
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.sunny,
                  color: Colors.yellow,
                ),
              ),
              Text(weatherModel.temp.toString()),
              Text(weatherModel.weather),
              Text(weatherModel.city),
            ],
          ),
        ),
      ),
    );
  }
}


/*
Card(
        child: Container(
          width: screenWidth(context) / 3.5,
          height: screenHeight(context) / 15,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  menuImage,
                  height: screenWidth(context) / 10,
                  colorFilter: ColorFilter.mode(logoColorPrimary, BlendMode.srcIn),
                ),
              ),
              //Icon(Icons.mail_outline),
              // Image.asset(menuImage,width: 24,),
              Text(
                menuName,
                //style: TextStyle(color: Color(0xFF949494)
                style: TextStyle(color: Colors.black54),
              ),
            ],
          ),
        ),
      )


       
            Text(weatherModel.temp.toString()),
            Text(weatherModel.weather),
            Text(weatherModel.city),
*/