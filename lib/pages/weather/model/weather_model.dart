class WeatherModel {
  String city;
  double temp;
  String weather;
  WeatherModel({
    required this.city,
    required this.temp,
    required this.weather,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
      city: json['name'],
      temp: json['main']['temp'],
      weather: json['weather'][0]['main']);

  factory WeatherModel.fromLocalJson(Map<String, dynamic> json) => WeatherModel(
      city: json['city'],
      temp: double.parse(json['temp']),
      weather: json['weather']);

  Map<String, dynamic> toJson() {
    return {"city": city, "temp": temp.toString(), "weather": weather};
  }
}
