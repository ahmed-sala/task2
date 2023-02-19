import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String title;
  final Color color;
  final Color textCo;
  BottomButton(
      {required this.title, required this.color, required this.textCo});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .8,
      height: 55,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: color,
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: textCo, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
