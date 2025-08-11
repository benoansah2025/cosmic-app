
import 'package:cosmic_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'routes/app_routes.dart';
import 'screens/home/home_screen.dart';

void main() {
  runApp(CosmicApp());
}

class CosmicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cosmic App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: '/',
      routes: AppRoutes.routes,
    );
  }
}
