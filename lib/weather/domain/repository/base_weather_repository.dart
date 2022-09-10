// SOLID principles
//
// Layer can talk with another layer
// dependency inversion principle
// This abstract class should not have implementation (body)
//
// The Dependency Inversion Principle (DIP) states that high-level
// modules should not depend on low-level modules; both should depend on abstractions.
// Abstractions should not depend on details.
import '../entities/weather.dart';

// Just contract and abstract class.
abstract class BaseWeatherRepository {
  Future<Weather> getWeatherByCityName(String cityName);
}
