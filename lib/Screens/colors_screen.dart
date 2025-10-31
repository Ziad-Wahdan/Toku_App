import 'package:flutter/material.dart';
import 'package:toku_app/Models/model.dart';
import 'package:toku_app/widgets.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({super.key});

  final List<Model> colors = const [
    Model(
      image: 'assets/images/colors/color_black.png',
      jpName: 'Kuro',
      enName: 'Black',
      sound: 'sounds/colors/black.wav',
    ),
    Model(
      image: 'assets/images/colors/color_brown.png',
      jpName: 'Chairo',
      enName: 'Brown',
      sound: 'sounds/colors/brown.wav',
    ),
    Model(
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'Kusunda Kiiro',
      enName: 'Dusty Yellow',
      sound: 'sounds/colors/dusty yellow.wav',
    ),
    Model(
      image: 'assets/images/colors/color_gray.png',
      jpName: 'Haiiro',
      enName: 'Gray',
      sound: 'sounds/colors/gray.wav',
    ),
    Model(
      image: 'assets/images/colors/color_green.png',
      jpName: 'Midori',
      enName: 'Green',
      sound: 'sounds/colors/green.wav',
    ),
    Model(
      image: 'assets/images/colors/color_red.png',
      jpName: 'Aka',
      enName: 'Red',
      sound: 'sounds/colors/red.wav',
    ),
    Model(
      image: 'assets/images/colors/color_white.png',
      jpName: 'Shiro',
      enName: 'White',
      sound: 'sounds/colors/white.wav',
    ),
    Model(
      image: 'assets/images/colors/color_yellow.png',
      jpName: 'Kiiro',
      enName: 'Yellow',
      sound: 'sounds/colors/yellow.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF6DC),
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Colors'),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
          fontFamily: "Momo_Trust_Display",
        ),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return LearningCard(number: colors[index], color: Colors.deepPurple);
        },
      ),
    );
  }
}
