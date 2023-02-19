import 'package:flutter/material.dart';

class CustumNumberFeild extends StatelessWidget {
  final String title;
  CustumNumberFeild({required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      child: TextFormField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 1)),
            labelText: title,
            prefixIcon: Icon(Icons.phone_outlined)),
        keyboardType: TextInputType.phone,
      ),
    );
  }
}
