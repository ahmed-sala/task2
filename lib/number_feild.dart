import 'package:flutter/material.dart';

class CustumNumberFeild extends StatelessWidget {
  final String title;
  CustumNumberFeild({required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      child: TextFormField(
        validator: (text) {
          if (text == null || text.trim().isEmpty) {
            return 'Enter your phone number';
          }
          return null;
        },
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
