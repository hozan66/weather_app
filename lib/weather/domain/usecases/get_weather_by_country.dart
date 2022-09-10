import 'package:weather_app/weather/domain/repository/base_weather_repository.dart';
import '../entities/weather.dart';

class GetWeatherByCountryName {
  // Getting a reference from BaseWeatherRepository class
  // We can't take an object form BaseWeatherRepository class because it's abstract class
  final BaseWeatherRepository repository;

  GetWeatherByCountryName(this.repository);

  // We will bring cityName from presentation layer
  Future<Weather> execute(String cityName) async {
    return await repository.getWeatherByCityName(cityName);
  }
}
