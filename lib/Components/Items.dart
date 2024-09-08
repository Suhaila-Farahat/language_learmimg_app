import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language_learning_app/Components/Models.dart';


 // as UI


class CategoryItems extends StatelessWidget {
  const CategoryItems({super.key, this.sectionName,this.sectionColor,this.onTap});

  final String? sectionName;
  final Color? sectionColor;
  final VoidCallback? onTap;  // as a function to navigate

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsetsDirectional.all(15),
          color: sectionColor,
          width: double.infinity,
          child: Center(
            child: Text(
              sectionName!,
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FamilyItem extends StatelessWidget {
  const FamilyItem ({super.key, required this.color, required this.family});

  final FamilyModel family; // as model of family
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: double.infinity,
      height: 100,
      child: Row(
        children: [
          Container(
            height: 100,
            width: 60,
            color: Colors.white,
            child: Image.asset(
              family.image,
            ),
          ),
          const SizedBox(
              width: 20),
          Expanded(
            child: Container(
              width: 260,
              child: Text(
                family.trName,
                style:const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
                onPressed: (){
                  final player =AudioPlayer();
                  player.play(AssetSource(family.sound));

                },
                icon:Icon(
                  Icons.play_arrow_outlined,
                  size: 40,
                  color: Colors.white,
                )
            ),
          )
        ],
      ),
    );
  }
}

class NumbersItem extends StatelessWidget {
  const NumbersItem ({super.key, required this.color, required this.number});

  final NumberModel number; // as model of number
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: double.infinity,
      height: 100,
      child: Row(
        children: [
          Container(
            height: 120,
            width: 75,
            color: Colors.white,
            child: Image.asset(
                number.image),
          ),
          const SizedBox(
              width: 20),
          Container(
            width: 245,
            child: Text(
              number.trName,
              style:const TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
          IconButton(
              onPressed: (){
                final player =AudioPlayer();
                player.play(AssetSource(number.sound));

              },
              icon:Icon(
                Icons.play_arrow_outlined,
                size: 40,
                color: Colors.white,
              )
          )
        ],
      ),
    );
  }
}

class ColourItem extends StatelessWidget {
  const ColourItem ({super.key,  required this.colour, required this.color});

  final ColourModel colour; // as model of colour
  final Color color;
  @override
  Widget build(BuildContext context) {
    final textColor = color == Colors.white ? Colors.black : Colors.white;

    return Container(
      width: double.infinity,
      height: 100,
      color: color,
      child: Row(
        children: [
          SizedBox(
            width: 20,),
          Container(
            width: 150,
            child: Text(
              colour.enName,
              style: TextStyle(
                color: textColor,
                fontSize: 25,
              ),
            ),
          ),
          Container(
            width: 170,
            child: Text(
              colour.trName,
              style: TextStyle(
                color: textColor,
                fontSize: 25,
              ),
            ),
          ),
          IconButton(
              onPressed: (){
                final player =AudioPlayer();
                player.play(AssetSource(colour.sound));

              },
              icon:Icon(
                Icons.play_arrow_outlined,
                size: 40,
                color: textColor,
              )
          )
        ],
      ),
    );
  }
}

class PhrasesItem extends StatelessWidget {
  const PhrasesItem ({super.key,  required this.phrase});

  final PhrasesModel phrase; // as model of number

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff45c5c),
      width: double.infinity,
      height: 130,
      child: Row(
        children: [
          SizedBox(width: 20,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                child: Text(
                  phrase.trName,
                  style:const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 300,
                child: Text(
                  phrase.enName,
                  style:const TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
              ),
            ],
          ),
          IconButton(
              onPressed: (){
                final player =AudioPlayer();
                player.play(AssetSource(phrase.sound));

              },
              icon:Icon(
                Icons.play_arrow_outlined,
                size: 40,
                color: Colors.white,
              )
          )
        ],
      ),
    );
  }
}

