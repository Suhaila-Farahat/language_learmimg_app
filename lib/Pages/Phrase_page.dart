import 'package:flutter/material.dart';
import 'package:language_learning_app/Components/Items.dart';
import 'package:language_learning_app/Components/Models.dart';


class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<PhrasesModel> phrasesList = const [
    PhrasesModel(
        sound: 'sounds/Phrases/Goodmorning.m4a',
        trName: 'Günaydın',
        enName: 'Good morning'),
    PhrasesModel(
        sound: 'sounds/Phrases/Myname.m4a',
        trName: 'Benim adım ....',
        enName: 'My name is ....'),
    PhrasesModel(
        sound: 'sounds/Phrases/Howareyou.m4a',
        trName: 'Nasılsın? ',
        enName: 'How are you?'),
    PhrasesModel(
        sound: 'sounds/Phrases/Finethankyou.m4a',
        trName: 'İyi, teşekkürler. Siz?',
        enName: 'Fine, thanks. And you?'),
    PhrasesModel(
        sound: 'sounds/Phrases/Goodbye.m4a',
        trName: 'Güle güle',
        enName: 'Goodbye'),
    PhrasesModel(
        sound: 'sounds/Phrases/Seeyousoon.m4a',
        trName: 'Yakında görüşmek üzere!',
        enName: 'See you soon!'),
    PhrasesModel(
        sound: 'sounds/Phrases/Sorry.m4a',
        trName: 'Özür dilerim',
        enName: 'I am sorry'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cümleler(Phrases)",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        backgroundColor: const Color(0xffc63d2f),
      ),
      body: ListView(children: [
        PhrasesItem(phrase: phrasesList[0]),
        PhrasesItem(phrase: phrasesList[1]),
        PhrasesItem(phrase: phrasesList[2]),
        PhrasesItem(phrase: phrasesList[3]),
        PhrasesItem(phrase: phrasesList[4]),
        PhrasesItem(phrase: phrasesList[5]),
        PhrasesItem(phrase: phrasesList[6]),
      ]),
    );
  }
}
