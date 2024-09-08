import 'package:flutter/material.dart';
import 'package:language_learning_app/Components/Items.dart';
import 'package:language_learning_app/Components/Models.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});

  final List<FamilyModel> familyList = const [
    FamilyModel(
        sound: 'sounds/Family/Father.m4a',
        image: 'assets/images/Family/father.jpeg',
        trName: 'Father : Baba'),
    FamilyModel(
        sound: 'sounds/Family/Mother.m4a',
        image: 'assets/images/Family/mother.jpeg',
        trName: 'Mather : Anne'),
    FamilyModel(
        sound: 'sounds/Family/Elderbrother.m4a',
        image: 'assets/images/Family/olderbrother.jpg',
        trName: 'Elder brother : Abi'),
    FamilyModel(
        sound: 'sounds/Family/Eldersister.m4a',
        image: 'assets/images/Family/oldersister.jpg',
        trName: 'Elder sister : Abla'),
    FamilyModel(
        sound: 'sounds/Family/Brother.m4a',
        image: 'assets/images/Family/brother.jpeg',
        trName: 'Brother : Erkek Kardeş'),
    FamilyModel(
        sound: 'sounds/Family/Sister.m4a',
        image: 'assets/images/Family/sister.jpg',
        trName: 'Sister : Kız kardeş'),
    FamilyModel(
        sound: 'sounds/Family/Husband.m4a',
        image: 'assets/images/Family/husband.png',
        trName: 'Husband : Koca'),
    FamilyModel(
        sound: 'sounds/Family/Wife.m4a',
        image: 'assets/images/Family/wife.png',
        trName: 'Wife : Karı'),
    FamilyModel(
        sound: 'sounds/Family/Grandfather.m4a',
        image: 'assets/images/Family/granfather.jpg',
        trName: 'Grandfather : Dede'),
    FamilyModel(
        sound: 'sounds/Family/Grandmother.m4a',
        image: 'assets/images/Family/grandmother.jpg',
        trName: 'Grandmother : Anneanne'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Aile(Family Members)",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        backgroundColor: const Color(0xffc63d2f),
      ),
      body: ListView(children: [
        FamilyItem(color: Colors.brown, family: familyList[0]),
        FamilyItem(color: Colors.redAccent, family: familyList[1]),
        FamilyItem(color: Colors.green, family: familyList[2]),
        FamilyItem(color: Color(0xff5d5858), family: familyList[3]),
        FamilyItem(color: Colors.blue, family: familyList[4]),
        FamilyItem(color: Colors.pink, family: familyList[5]),
        FamilyItem(color: Colors.indigoAccent, family: familyList[6]),
        FamilyItem(color: Colors.deepOrangeAccent, family: familyList[7]),
        FamilyItem(color: Colors.teal, family: familyList[8]),
        FamilyItem(color: Colors.green, family: familyList[9]),
      ]),
    );
  }
}
