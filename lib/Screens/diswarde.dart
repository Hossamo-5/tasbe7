import 'package:flutter/material.dart';

import 'bottonshet.dart';
import 'card3dad.dart';

class DisWarde extends StatefulWidget {
  const DisWarde({Key? key}) : super(key: key);

  @override
  _DisWardeState createState() => _DisWardeState();
}

class _DisWardeState extends State<DisWarde> {
  int count = 3;
  void decrementCount() {
    setState(() {
      if (count > 0) {
        count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xffFF9B00),
            size: 33,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return const BottonShet();
                },
              );
            },
            icon: const Icon(
              Icons.info_outline_rounded,
              color: Color(0xffFF9B00),
              size: 30,
            ),
          ),
        ],
        title: const Text("وُذَڪرٍ",
            style: TextStyle(
              color: Color(0xffFF9B00),
              fontSize: 30.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Card3dad("""أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ
اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ.""",
              1),
          Card3dad("الحمد لله رب العالمين", 33),
          Card3dad("لا إله إلا الله", 20),
          Card3dad("الله أكبر", 20),
        ],
      ),
    );
  }
}
