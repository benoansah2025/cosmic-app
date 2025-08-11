import 'package:cosmic_app/core/constants/strings.dart';
import 'package:cosmic_app/models/planet.dart';
import 'package:flutter/material.dart';


class PlanetDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Planet planet = ModalRoute.of(context)!.settings.arguments as Planet;

    return Scaffold(
      appBar: AppBar(title: Text('${planet.name} ${AppStrings.planetDetailTitle}')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(planet.image, height: 150),
            const SizedBox(height: 20),
            Text(planet.description, style: const TextStyle(color: Colors.white, fontSize: 16)),
            const SizedBox(height: 20),
            const Text(AppStrings.planetStatsComing, style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
