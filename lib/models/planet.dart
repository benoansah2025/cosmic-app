class Planet {
  final String id;
  final String name;
  final String description;
  final String image;
  final double mass;
  final double gravity;
  final double dayLength;
  final double escapeVelocity;
  final double meanTemp;
  final double distanceFromSun;

  Planet({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.mass,
    required this.gravity,
    required this.dayLength,
    required this.escapeVelocity,
    required this.meanTemp,
    required this.distanceFromSun,
  });

  factory Planet.fromMap(Map<String, dynamic> data) {
    return Planet(
      id: data['id'],
      name: data['name'],
      description: data['description'],
      image: data['image'],
      mass: data['mass'],
      gravity: data['gravity'],
      dayLength: data['dayLength'],
      escapeVelocity: data['escapeVelocity'],
      meanTemp: data['meanTemp'],
      distanceFromSun: data['distanceFromSun'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'image': image,
      'mass': mass,
      'gravity': gravity,
      'dayLength': dayLength,
      'escapeVelocity': escapeVelocity,
      'meanTemp': meanTemp,
      'distanceFromSun': distanceFromSun,
    };
  }
}
