import 'package:flutter/material.dart';
import 'package:language_learning_app/Components/Items.dart';
import 'package:language_learning_app/Components/Models.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<ColourModel> ColourList = const [
    ColourModel(
        sound: 'sounds/Colours/Red.m4a',
        trName: 'kırmızı',
        enName: 'Red :',
         ),
    ColourModel(
        sound: 'sounds/Colours/Orange.m4a',
        trName: 'turuncu',
        enName: 'Orange :',
        ),
    ColourModel(
        sound: 'sounds/Colours/Yellow.m4a',
        trName: 'sarı',
        enName: 'Yellow :',
         ),
    ColourModel(
        sound: 'sounds/Colours/Green.m4a',
        trName: "yeşil",
        enName: 'Green : ',
        ),
    ColourModel(
        sound: 'sounds/Colours/Blue.m4a',
        trName: 'mavi',
        enName: 'Blue :',
        ),
    ColourModel(
        sound: 'sounds/Colours/Pink.m4a',
        trName: 'pembe',
        enName: 'Pink :',
        ),
    ColourModel(
        sound: 'sounds/Colours/Black.m4a',
        trName: 'siyah',
        enName: 'Black :',
        ),
    ColourModel(
        sound: 'sounds/Colours/Purple.m4a',
        trName: 'mor',
        enName: 'Purple :',
        ),
    ColourModel(
        sound: 'sounds/Colours/Brown.m4a',
        trName: 'kahverengi',
        enName: 'Brown :',
        ),
    ColourModel(
        sound: 'sounds/Colours/White.m4a',
        trName: 'beyaz',
        enName: 'White :',
        ),
    ColourModel(
        sound: 'sounds/Colours/Grey.m4a',
        trName: 'gri',
        enName: 'Gray :',
        ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Renkler(Colors)",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        backgroundColor: const Color(0xffc63d2f),
      ),
      body: ListView(children: [
        ColourItem(colour: ColourList[0], color: Colors.red,),
        ColourItem(colour: ColourList[1], color: Colors.orange,),
        ColourItem(colour: ColourList[2], color: Color(0xffdfbf12)),
        ColourItem(colour: ColourList[3], color: Colors.green,),
        ColourItem(colour: ColourList[4], color: Colors.blue,),
        ColourItem(colour: ColourList[5], color: Colors.pink,),
        ColourItem(colour: ColourList[6], color: Colors.black,),
        ColourItem(colour: ColourList[7], color: Colors.purple,),
        ColourItem(colour: ColourList[8], color: Colors.brown,),
        ColourItem(colour: ColourList[9], color: Colors.white,),
        ColourItem(colour: ColourList[10], color: Color(0xff5d5858),),
      ]),
    );
  }
}
