import 'package:cosmic_app/core/constants/strings.dart';
import 'package:flutter/material.dart';


class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String name = '';
  String role = '';
  String progress = '';
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchProfileData();
  }

  Future<void> fetchProfileData() async {
    // Simulate API delay
    await Future.delayed(const Duration(seconds: 1));

    // Replace with API logic later
    setState(() {
      name = AppStrings.profileName;
      role = AppStrings.profileRole;
      progress = AppStrings.personalProgress;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.profileTitle)),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  ),
                  const SizedBox(height: 16),
                  Text(name, style: const TextStyle(color: Colors.white, fontSize: 20)),
                  Text(role, style: const TextStyle(color: Colors.grey)),
                  const SizedBox(height: 20),
                  ListTile(
                    leading: const Icon(Icons.rocket_launch, color: Colors.white),
                    title: Text(progress, style: const TextStyle(color: Colors.white)),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.notifications, color: Colors.white),
                    title: const Text(AppStrings.notifications, style: TextStyle(color: Colors.white)),
                    onTap: () {},
                  ),
                ],
              ),
            ),
    );
  }
}
