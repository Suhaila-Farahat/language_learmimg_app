import 'package:flutter/material.dart';
import 'package:language_learning_app/Components/Items.dart';
import 'package:language_learning_app/Pages/Colors_page.dart';
import 'package:language_learning_app/Pages/Family_page.dart';
import 'package:language_learning_app/Pages/Numbers_page.dart';
import 'package:language_learning_app/Pages/Phrase_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xb5f15a59),
      appBar: AppBar(
        title: Text(
          "Language Learning",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: [
          CategoryItems(
            sectionName: "Sayılar(Numbers)",
            sectionColor: const Color(0xffc63d2f),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NumbersPage()));
            },
          ),
          CategoryItems(
            sectionName: "Aile(Family Members)",
            sectionColor: const Color(0xffe54822),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FamilyPage()));
            },

          ),
          CategoryItems(
            sectionName:"Renkler(Colors)",
            sectionColor: const Color(0xffee7e2a),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ColorsPage()));
            },

          ),
          CategoryItems(
            sectionName: "Cümleler(Phrases)",
            sectionColor: const Color(0xffebcc20),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PhrasesPage()));
            },

          ),
        ],
      ),
    );
  }
}
