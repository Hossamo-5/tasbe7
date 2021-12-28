import 'package:flutter/material.dart';
import 'package:tasbe7/Screens/diswarde.dart';

class WardScreen extends StatefulWidget {
  const WardScreen({Key? key}) : super(key: key);

  @override
  _WardScreenState createState() => _WardScreenState();
}

class _WardScreenState extends State<WardScreen> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return const DisWarde();
                }));
          },
          child: Card(
            color: Colors.black,
            shadowColor: const Color(0xffC48404),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            elevation: 8,
            child: const Center(
              child: GridTile(
                child: Text(
                  "أذكار المساء",
                  style: TextStyle(
                    color: Color(0xffC48404),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return const DisWarde();
            }));
          },
          child: Card(
              color: Colors.black,
              shadowColor: const Color(0xffC48404),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              elevation: 8,
              child: const Center(
                  child: GridTile(
                      child: Text(
                "أذكار الصباح",
                style: TextStyle(
                  color: Color(0xffC48404),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
                  ),
              ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return const DisWarde();
                }));
          },
          child: Card(
            color: Colors.black,
            shadowColor: const Color(0xffC48404),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            elevation: 8,
            child: const Center(
              child: GridTile(
                child: Text(
                  " وردك اليوم",
                  style: TextStyle(
                    color: Color(0xffC48404),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return const DisWarde();
                }));
          },
          child: Card(
            color: Colors.black,
            shadowColor: const Color(0xffC48404),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            elevation: 8,
            child: const Center(
              child: GridTile(
                child: Text(
                  "دعاء الشفاء",
                  style: TextStyle(
                    color: Color(0xffC48404),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
