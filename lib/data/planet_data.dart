import '../models/planet.dart';
import '../core/constants/assets.dart';

class PlanetData {
  static final List<Planet> planets = [
    Planet(
      id: '1',
      name: 'Mercury',
      description: 'Smallest planet and closest to the Sun.',
      image: AppAssets.planet1,
      mass: 0.33,
      gravity: 3.7,
      dayLength: 4222.6,
      escapeVelocity: 4.25,
      meanTemp: 167,
      distanceFromSun: 57.9,
    ),
    Planet(
      id: '2',
      name: 'Venus',
      description: 'Second planet from the Sun, Earth’s closest neighbor.',
      image: AppAssets.planet2,
      mass: 4.87,
      gravity: 8.9,
      dayLength: 2802.0,
      escapeVelocity: 10.36,
      meanTemp: 464,
      distanceFromSun: 108.2,
    ),
  ];

  /// Adds a new planet to the list
  static void addPlanet(Planet planet) {
    planets.add(planet);
  }

  /// Removes a planet by id
  static void removePlanet(String id) {
    planets.removeWhere((planet) => planet.id == id);
  }
}
