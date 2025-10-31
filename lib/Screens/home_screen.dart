import 'package:flutter/material.dart';
import 'package:toku_app/Screens/colors_screen.dart';
import 'package:toku_app/Screens/family_members.dart';
import 'package:toku_app/Screens/numbers_screen.dart';
import 'package:toku_app/Screens/phrases_screen.dart';
import 'package:toku_app/widgets.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF6DC),
      appBar: AppBar(
        title: const Text(
          "Toku",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: "Momo_Trust_Display",
          ),
        ),
        backgroundColor: Colors.brown,
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: const [
          CategoryCard(
            text: "Numbers",
            color: Colors.orange,
            destination: NumbersScreen(),
          ),
          CategoryCard(
            text: "Family Members",
            color: Colors.green,
            destination: FamilyMembersScreen(),
          ),
          CategoryCard(
            text: "Colors",
            color: Colors.deepPurple,
            destination: ColorsScreen(),
          ),
          CategoryCard(
            text: "Phrases",
            color: Colors.cyan,
            destination: PhrasesScreen(),
          ),
        ],
      ),
    );
  }
}
