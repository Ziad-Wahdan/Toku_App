import 'package:flutter/material.dart';
import 'package:toku_app/Models/model.dart';
import 'package:audioplayers/audioplayers.dart';

class LearningCard extends StatelessWidget {
  const LearningCard({super.key, required this.number, required this.color});

  final Model number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          number.image == null
              ? SizedBox()
              : Container(
                color: Color(0xffFFF6DC),
                child: Image.asset(number.image!),
              ),
          Spacer(flex: 1),
          Column(
            children: [
              SizedBox(height: 15),
              Text(
                number.jpName,
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20),
              Text(
                number.enName,
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ],
          ),
          Spacer(flex: 7),
          IconButton(
            onPressed: () {
              player.play(AssetSource(number.sound));
            },
            icon: Icon(Icons.play_arrow_rounded, size: 40),
          ),
        ],
      ),
    );
  }
}

final player = AudioPlayer();

class CategoryCard extends StatelessWidget {
  final String text;
  final Color color;
  final Widget destination;

  const CategoryCard({
    super.key,
    required this.text,
    required this.color,
    required this.destination,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => destination));
      },
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(bottom: 5),
        padding: const EdgeInsets.symmetric(vertical: 90),
        width: double.infinity,
        color: color,
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
            fontFamily: "Momo_Trust_Display",
          ),
        ),
      ),
    );
  }
}
