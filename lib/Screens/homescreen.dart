import 'package:flutter/material.dart';
import 'package:tasbe7/Screens/mycolors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;
  void incrementCount() {
    setState(() {
      count++;
    });
  }

  void zeroCount() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC48404),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$count",
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(
              height: 15.0,
            ),
            ElevatedButton(
              onPressed: () {
                incrementCount();
              },
              child: const Text(
                "سـبـح",
                style: TextStyle(color: Color(0xffFF9B00), fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(30),
                primary: Colors.black,
              ),
            ),

            const SizedBox(
              height: 10.0,
            ),
            //zero 3dad
            ElevatedButton(
              onPressed: () {
                zeroCount();
              },
              child: const Text(
                "0",
                style: TextStyle(color: Color(0xffFF9B00), fontSize: 17),
              ),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                primary: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
