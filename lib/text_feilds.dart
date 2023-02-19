import 'package:flutter/material.dart';

class CustumTextFeild extends StatelessWidget {
  final IconData icon;
  final String title;
  final String hint;
  CustumTextFeild(
      {required this.title, required this.icon, required this.hint});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      child: TextFormField(
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 1)),
          labelText: title,
          hintText: hint,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}
