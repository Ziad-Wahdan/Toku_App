import 'package:flutter/material.dart';
import 'package:toku_app/Models/model.dart';
import 'package:toku_app/widgets.dart';

class FamilyMembersScreen extends StatelessWidget {
  const FamilyMembersScreen({super.key});

  final List<Model> members = const [
    Model(
      image: 'assets/images/family_members/family_father.png',
      jpName: 'Chichi',
      enName: 'Father',
      sound: 'sounds/family_members/father.wav',
    ),
    Model(
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'Haha',
      enName: 'Mother',
      sound: 'sounds/family_members/mother.wav',
    ),
    Model(
      image: 'assets/images/family_members/family_son.png',
      jpName: 'Musuko',
      enName: 'Son',
      sound: 'sounds/family_members/son.wav',
    ),
    Model(
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'Musume',
      enName: 'Daughter',
      sound: 'sounds/family_members/daughter.wav',
    ),
    Model(
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: 'Ani',
      enName: 'Older Brother',
      sound: 'sounds/family_members/older brother.wav',
    ),
    Model(
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'Ane',
      enName: 'Older Sister',
      sound: 'sounds/family_members/older sister.wav',
    ),
    Model(
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'Otōto',
      enName: 'Younger Brother',
      sound: 'sounds/family_members/younger brother.wav',
    ),
    Model(
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'Imōto',
      enName: 'Younger Sister',
      sound: 'sounds/family_members/younger sister.wav',
    ),
    Model(
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'Ojiisan',
      enName: 'Grandfather',
      sound: 'sounds/family_members/grand father.wav',
    ),
    Model(
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: 'Sobo',
      enName: 'Grandmother',
      sound: 'sounds/family_members/grand mother.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF6DC),
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Family Members'),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
          fontFamily: "Momo_Trust_Display",
        ),
      ),
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) {
          return LearningCard(number: members[index], color: Colors.green);
        },
      ),
    );
  }
}
