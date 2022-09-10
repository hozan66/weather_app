import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:weather_app/weather/data/models/weather_model.dart';

import '../../../core/utils/constance.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCountryName(String countryName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCountryName(String countryName) async {
    try {
      Response response = await Dio().get(
          '${AppConstance.baseUrl}/weather?q=$countryName&appid=${AppConstance.appKey}');

      log(response.toString());
      return WeatherModel.fromMap(response.data);
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
