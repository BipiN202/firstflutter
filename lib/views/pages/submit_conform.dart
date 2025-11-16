import 'package:flutter/material.dart';

class SubmitConform extends StatelessWidget {
  const SubmitConform({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Submit Confirmation'),
      ),
      body: Center(
        child: Text(
          'Your submission was successful!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}