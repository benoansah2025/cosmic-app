import 'package:cosmic_app/core/constants/strings.dart';
import 'package:cosmic_app/data/planet_data.dart';
import 'package:cosmic_app/models/planet.dart';
import 'package:cosmic_app/widgets/planet_card.dart';
import 'package:flutter/material.dart';


class FavouritesScreen extends StatefulWidget {
  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  List<Planet> favourites = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchFavourites();
  }

  Future<void> fetchFavourites() async {
    // Simulate API delay
    await Future.delayed(const Duration(seconds: 1));

    // Replace with API logic later
    setState(() {
      favourites = PlanetData.planets.take(2).toList();
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.favouritesTitle)),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : favourites.isEmpty
              ? const Center(child: Text(AppStrings.noFavourites, style: TextStyle(color: Colors.white)))
              : ListView.builder(
                  itemCount: favourites.length,
                  itemBuilder: (context, index) {
                    return PlanetCard(
                      planet: favourites[index],
                      onTap: () => Navigator.pushNamed(context, '/planet_detail', arguments: favourites[index]),
                    );
                  },
                ),
    );
  }
}
