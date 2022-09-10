import 'package:weather_app/weather/domain/entities/weather.dart';

// All logic of model is here such that fromJson(), toJson() and more .....
class WeatherModel extends Weather {
  WeatherModel(
    super.id,
    super.cityName,
    super.main,
    super.description,
    super.pressure,
  );

  factory WeatherModel.fromMap(Map<String, dynamic> json) {
    return WeatherModel(
      json['id'],
      json['name'],
      json['weather'][0]['main'],
      json['weather'][0]['description'],
      json['main']['pressure'],
    );
  }
}
