import 'package:cosmic_app/screens/home/favourites/favourites_screen.dart';
import 'package:cosmic_app/screens/home/planet_detail/planet_detail.dart';
import 'package:cosmic_app/screens/home/profile/profile_screen.dart';
import 'package:cosmic_app/screens/onboarding/splashscreen.dart';
import '../screens/home/home_screen.dart';
import '../screens/auth/login_screen.dart';
import '../screens/auth/signup_screen.dart';


class AppRoutes {
  static final routes = {
    '/': (context) => HomeScreen(),
    '/favourites': (context) => FavouritesScreen(),
    '/profile': (context) => ProfileScreen(),
    '/login': (context) => LoginScreen(),
    '/signup': (context) => SignupScreen(),
    '/planet_detail': (context) => PlanetDetailScreen(),
    '/splashscreen': (context) => SplashScreen(),
  };
}
