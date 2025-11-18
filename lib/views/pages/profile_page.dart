import 'package:flutter/material.dart';
import 'package:myfirstapp/data/notifiers.dart';
import 'package:myfirstapp/views/pages/settings_page.dart';
import 'package:myfirstapp/views/pages/welcome_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              ListTile(
                title: const Text('Logout'),
                onTap: () {
                  selectedPageNotifier.value = 0;
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const WelcomePage();
                      },
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text('Settings'),
                onTap: () {
                  selectedPageNotifier.value = 0;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const SettingsPage(title: 'Setting');
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
