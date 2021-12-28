import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottonShet extends StatefulWidget {
  const BottonShet({Key? key}) : super(key: key);

  @override
  _BottonShetState createState() => _BottonShetState();
}

class _BottonShetState extends State<BottonShet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFF9B00),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.clear,
                    color: Colors.red,
                    size: 35.0,
                  ),
                ),
                const Text(
                  "لـلمساعدة",
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const Text(
            "This application is developed by (Hossam)",
            style: TextStyle(
                fontSize: 20, fontStyle: FontStyle.italic, color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
