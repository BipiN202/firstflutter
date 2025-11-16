import 'package:flutter/material.dart';
import 'package:myfirstapp/data/constants.dart';
import 'package:myfirstapp/widgets/hero_widget.dart';

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
                      children: [Text("Basic Layout",
                      style: KTextStyle.titleTealText,),
                       Text("Basic Layout",
                       style: KTextStyle.descriptionText,),],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
