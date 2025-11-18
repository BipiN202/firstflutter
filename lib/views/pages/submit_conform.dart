import 'package:flutter/material.dart';
import 'package:myfirstapp/widgets/navbar.dart';

class SubmitConform extends StatelessWidget {
  const SubmitConform({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Submit Confirmation'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Text(
              'Your submission was successful!',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
      bottomNavigationBar: const NavbarWidget(),
    );
  }
}