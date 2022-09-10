import 'package:weather_app/weather/data/data_source/remote_data_source.dart';
import 'package:weather_app/weather/domain/entities/weather.dart';

import '../../domain/repository/base_weather_repository.dart';

// Implementation class
class WeatherRepository implements BaseWeatherRepository {
  // Getting a reference from BaseRemoteDataSource class
  // We can't take an object form BaseRemoteDataSource class because it's abstract class
  final BaseRemoteDataSource baseRemoteDataSource;

  WeatherRepository(this.baseRemoteDataSource);

  @override
  Future<Weather> getWeatherByCityName(String countryName) async {
    return (await baseRemoteDataSource.getWeatherByCountryName(countryName))!;
  }
}
