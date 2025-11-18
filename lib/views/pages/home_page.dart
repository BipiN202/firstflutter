import 'package:flutter/material.dart';
import 'package:myfirstapp/data/constants.dart';
import 'package:myfirstapp/widgets/hero_widget.dart';
import 'package:myfirstapp/widgets/navbar.dart';
import 'package:myfirstapp/views/pages/profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        //page scroller
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const HeroWidget(),

              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Basic Layout",
                          style: KTextStyle.titleTealText,
                        ),
                        Text(
                          "Basic Layout",
                          style: KTextStyle.descriptionText,
                        ),
                        const SizedBox(height: 12.0),
                        TextButton(
                          onPressed: () {
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
                          },
                style: FilledButton.styleFrom(
                  minimumSize: Size(double.infinity, 50), 
                ),
                child: Text('Profile'),
              ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavbarWidget(),
    );
  }
}
