import 'package:flutter/material.dart';
import 'package:myfirstapp/data/notifiers.dart';
import 'package:myfirstapp/views/pages/home_page.dart';
import 'package:myfirstapp/views/pages/profile_page.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedIndex, child) {
        return NavigationBar(
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
          ],
          onDestinationSelected: (int value) {
            
            selectedPageNotifier.value = value;
           
            if (value == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            } else if (value == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Scaffold(
                    appBar: AppBar(title: const Text('Profile')),
                    body: const ProfilePage(),
                    bottomNavigationBar: const NavbarWidget(),
                  ),
                ),
              );
            }
          },
          selectedIndex: selectedIndex,
        );
      },
    );
    
    
    
  }
}