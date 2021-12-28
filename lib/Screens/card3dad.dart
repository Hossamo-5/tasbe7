import 'package:flutter/material.dart';

class Card3dad extends StatefulWidget {
  String text3dad;
  int count = 3;
  Card3dad(this.text3dad, this.count, {Key? key}) : super(key: key);
  @override
  _Card3dadState createState() => _Card3dadState();
}

class _Card3dadState extends State<Card3dad> {
  void decrementCount() {
    setState(() {
      if (widget.count > 0) {
        widget.count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shadowColor: Colors.amber,
        margin: const EdgeInsets.all(5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: Colors.black,
        elevation: 5,
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                widget.text3dad,
                style: const TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            FlatButton(
              onPressed: () {
                decrementCount();
              },
              child: Text("${widget.count}"),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              minWidth: double.infinity,
              height: 45,
              color: (widget.count == 0)
                  ? Colors.red.shade400
                  : const Color(0xffC48404),
            ),
          ],
        ),
      ),
    );
  }
}
