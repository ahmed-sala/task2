import 'package:flutter/material.dart';

class EmailTextFeild extends StatelessWidget {
  final IconData icon;
  final String title;
  final String hint;
  var emailController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  EmailTextFeild(
      {required this.title,
      required this.icon,
      required this.hint,
      required this.emailController});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      child: TextFormField(
        validator: (text) {
          if (text == null || text.trim().isEmpty) {
            return 'please enter email';
          }
          if (!ValidationUtils.isValidEmail(text)) {
            return 'please enter valid email';
          }
          return null;
        },
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
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

class ValidationUtils {
  static bool isValidEmail(String email) {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
  }
}
