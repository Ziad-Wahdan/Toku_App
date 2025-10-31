import 'package:flutter/material.dart';
import 'package:toku_app/Models/model.dart';
import 'package:toku_app/widgets.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({super.key});

  final List<Model> phrases = const [
    Model(
      jpName: 'Kimasu ka?',
      enName: 'Are you coming?',
      sound: 'sounds/phrases/are_you_coming.wav',
    ),
    Model(
      jpName: 'Wasurezu ni chaneru tōroku shite ne',
      enName: 'Don\'t forget to subscribe',
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    Model(
      jpName: 'Genki desu ka?',
      enName: 'How are you feeling?',
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    Model(
      jpName: 'Anime ga daisuki',
      enName: 'I love anime',
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    Model(
      jpName: 'Puroguramingu ga daisuki',
      enName: 'I love programming',
      sound: 'sounds/phrases/i_love_programming.wav',
    ),
    Model(
      jpName: 'Puroguramingu wa kantan',
      enName: 'Programming is easy',
      sound: 'sounds/phrases/programming_is_easy.wav',
    ),
    Model(
      jpName: 'Namae wa nan desu ka?',
      enName: 'What is your name?',
      sound: 'sounds/phrases/what_is_your_name.wav',
    ),
    Model(
      jpName: 'Doko ni iku no?',
      enName: 'Where are you going?',
      sound: 'sounds/phrases/where_are_you_going.wav',
    ),
    Model(
      jpName: 'Hai, kimasu',
      enName: 'Yes, I\'m coming',
      sound: 'sounds/phrases/yes_im_coming.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Phrases'),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
          fontFamily: "Momo_Trust_Display",
        ),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return LearningCard(number: phrases[index], color: Colors.cyan);
        },
      ),
    );
  }
}
