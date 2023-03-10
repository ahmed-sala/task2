import 'package:flutter/material.dart';

class CustumTextFeild extends StatelessWidget {
  final IconData icon;
  final String title;
  final String hint;
  var emailController = TextEditingController();
  CustumTextFeild(
      {required this.title,
      required this.icon,
      required this.hint,
      required this.emailController});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      child: TextFormField(
        controller: emailController,
        keyboardType: TextInputType.name,
        validator: (text) {
          if (text == null || text.trim().isEmpty) {
            return 'please enter your name';
          }
          return null;
        },
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
