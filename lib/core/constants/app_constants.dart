import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConstants {

  final  BASE_URL = dotenv.env["BASE_URL"];
  final  API_KEY = dotenv.env["API_KEY"];
  
}