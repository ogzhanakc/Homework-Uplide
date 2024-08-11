import 'dart:convert';
import 'package:flutter_homework_uplide/core/constants/app_constants.dart';
import 'package:http/http.dart' as http;


class WeatherService {
  Future<Map<String , dynamic>> getWeather(String city) async {

    Uri uri = Uri.parse(
        "${AppConstants().BASE_URL}?q=$city&appid=${AppConstants().API_KEY}");
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load weather');
    }
  }
}
