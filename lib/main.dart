import 'package:cosmic_app/services/cache.dart';
import 'package:cosmic_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(const CosmicApp());
}

class CosmicApp extends StatelessWidget {
  const CosmicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cosmic App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const AppStartScreen(),
      routes: AppRoutes.routes,
    );
  }
}

class AppStartScreen extends StatefulWidget {
  const AppStartScreen({super.key});

  @override
  State<AppStartScreen> createState() => _AppStartScreenState();
}

class _AppStartScreenState extends State<AppStartScreen> {
  @override
  void initState() {
    super.initState();
    checkUserSession();
  }

  Future<void> checkUserSession() async {
    final userData = await CachingService.getUserData();

    if (userData == null) {
      // First open or cache cleared → go to Splash
      Navigator.pushReplacementNamed(context, '/splashscreen');
    } else {
      // User data found → check session validity
      final valid = await CachingService.isSessionValid();
      if (valid) {
        Navigator.pushReplacementNamed(context, '/home');
      } else {
        Navigator.pushReplacementNamed(context, '/login');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: 
      Center(
        child: CircularProgressIndicator()
        )
        );
  }
}
