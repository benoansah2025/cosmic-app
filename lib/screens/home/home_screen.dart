import 'package:flutter/material.dart';
import '../../data/planet_data.dart';
import '../../widgets/planet_card.dart';
import '../../core/constants/strings.dart';
import '../../models/planet.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Planet> planets = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchPlanets();
  }

  Future<void> fetchPlanets() async {
    // Simulate API delay
    await Future.delayed(const Duration(seconds: 1));

    // Replace with API call later
    setState(() {
      planets = PlanetData.planets;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.homeTitle)),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: planets.length,
              itemBuilder: (context, index) {
                return PlanetCard(
                  planet: planets[index],
                  onTap: () => Navigator.pushNamed(context, '/planet_detail', arguments: planets[index]),
                );
              },
            ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: AppStrings.homeTitle),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: AppStrings.favouritesTitle),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: AppStrings.profileTitle),
        ],
        onTap: (i) {
          if (i == 1) Navigator.pushNamed(context, '/favourites');
          if (i == 2) Navigator.pushNamed(context, '/profile');
        },
      ),
    );
  }
}
