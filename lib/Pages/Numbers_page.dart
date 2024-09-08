import 'package:flutter/material.dart';
import 'package:language_learning_app/Components/Items.dart';
import 'package:language_learning_app/Components/Models.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<NumberModel> numbersList = const [
    NumberModel(
        image: 'assets/images/Numbers/1.jpg',
        trName: 'bir',
        sound: 'sounds/Numbers/One.m4a'),
    NumberModel(
        image: 'assets/images/Numbers/2.jpg',
        trName: 'iki',
        sound: 'sounds/Numbers/Two.m4a'),
    NumberModel(
        image: 'assets/images/Numbers/3.jpg',
        trName: 'üç',
        sound: 'sounds/Numbers/Three.m4a'),
    NumberModel(
        image: 'assets/images/Numbers/4.jpg',
        trName: 'dört',
        sound: 'sounds/Numbers/Four.m4a'),
    NumberModel(
        image: 'assets/images/Numbers/5.jpg',
        trName: 'beş',
        sound: 'sounds/Numbers/Five.m4a'),
    NumberModel(
        image: 'assets/images/Numbers/6.jpg',
        trName: 'altı',
        sound: 'sounds/Numbers/Six.m4a'),
    NumberModel(
        image: 'assets/images/Numbers/7.jpg',
        trName: 'yedi',
        sound: 'sounds/Numbers/Seven.m4a'),
    NumberModel(
        image: 'assets/images/Numbers/8.jpeg',
        trName: 'sekiz',
        sound: 'sounds/Numbers/Eight.mp3'),
    NumberModel(
        image: 'assets/images/Numbers/9.png',
        trName: 'dokuz',
        sound: 'sounds/Numbers/Nine.m4a'),
    NumberModel(
        image: 'assets/images/Numbers/10.jpg',
        trName: 'on',
        sound: 'sounds/Numbers/Ten.m4a'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sayılar(Numbers)",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        backgroundColor: const Color(0xffc63d2f),
      ),
      body: ListView(children: [
        NumbersItem(color: Colors.purpleAccent, number: numbersList[0]),
        NumbersItem(color: Colors.red, number: numbersList[1]),
        NumbersItem(color: Colors.green, number: numbersList[2]),
        NumbersItem(color: Colors.cyanAccent, number: numbersList[3]),
        NumbersItem(color: Colors.brown, number: numbersList[4]),
        NumbersItem(color: Colors.blue, number: numbersList[5]),
        NumbersItem(color: Colors.yellow, number: numbersList[6]),
        NumbersItem(color: Colors.purple, number: numbersList[7]),
        NumbersItem(color: Colors.greenAccent, number: numbersList[8]),
        NumbersItem(color: Colors.indigo, number: numbersList[9]),
      ]),
    );
  }
}
