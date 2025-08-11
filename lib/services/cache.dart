import 'package:shared_preferences/shared_preferences.dart';

class CachingService {
  static const String _userKey = 'user_data';
  static const String _expiryKey = 'session_expiry';

  /// Save user data and session expiry time
  static Future<void> saveUserData(Map<String, dynamic> user, Duration sessionDuration) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_userKey, user.toString()); // You can use jsonEncode for actual objects
    final expiryTime = DateTime.now().add(sessionDuration).millisecondsSinceEpoch;
    await prefs.setInt(_expiryKey, expiryTime);
  }

  /// Get user data (returns null if not found)
  static Future<String?> getUserData() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_userKey);
  }

  /// Check if session is still valid
  static Future<bool> isSessionValid() async {
    final prefs = await SharedPreferences.getInstance();
    final expiry = prefs.getInt(_expiryKey);
    if (expiry == null) return false;
    return DateTime.now().millisecondsSinceEpoch < expiry;
  }

  /// Clear user data (logout or cache cleared)
  static Future<void> clearCache() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_userKey);
    await prefs.remove(_expiryKey);
  }
}
