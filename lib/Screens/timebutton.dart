import 'package:flutter/material.dart';

class TimeButton extends StatefulWidget {
  const TimeButton({Key? key}) : super(key: key);

  @override
  _TimeButtonState createState() => _TimeButtonState();
}

class _TimeButtonState extends State<TimeButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor:const Color(0xff241178),
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
                  "1443-05-19هـ ",
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
            height: 5,
            endIndent: 5,
            indent: 5,
          ),
          //الفجر
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                //Time
                Text(
                  "٥:٢٤ ص",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xffFF9B00),
                  ),
                ),
                //Name
                Text(
                  "الفجر",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.amber,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
            height: 5,
            endIndent: 5,
            indent: 5,
          ),
          //الشروق
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "٦:٥٨ ص",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xffFF9B00),
                  ),
                ),
                Text(
                  "الشروق",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.amber,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
            height: 5,
            endIndent: 5,
            indent: 5,
          ),
          //الظهر
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "١٢:٠٢ م",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xffFF9B00),
                  ),
                ),
                Text(
                  "الظُّهْر",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.amber,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
            height: 5,
            endIndent: 5,
            indent: 5,
          ),
          //العصر
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "٢:٤٨ م",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xffFF9B00),
                  ),
                ),
                Text(
                  "العَصر",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.amber,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
            height: 5,
            endIndent: 5,
            indent: 5,
          ),
          //المغرب
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "٥:٠٦ م",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xffFF9B00),
                  ),
                ),
                Text(
                  "المَغرب",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.amber,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
            height: 5,
            endIndent: 5,
            indent: 5,
          ),
          //العِشاء
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "٦:٣٠ م",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xffFF9B00),
                  ),
                ),
                Text(
                  "العِشاء",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.amber,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
