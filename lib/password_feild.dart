import 'package:flutter/material.dart';

class CustumPasswordFeild extends StatefulWidget {
  final String title;
  var passwordController = TextEditingController();

  CustumPasswordFeild({required this.title, required this.passwordController});

  @override
  State<CustumPasswordFeild> createState() => _CustumPasswordFeildState();
}

class _CustumPasswordFeildState extends State<CustumPasswordFeild> {
  bool securedPassword1 = true;

  bool securedPassword2 = true;
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      child: TextFormField(
        controller: widget.passwordController,
        keyboardType: TextInputType.visiblePassword,
        obscureText: securedPassword1,
        validator: (text) {
          if (text == null || text.trim().isEmpty) {
            return 'please enter password';
          }
          if (text.length < 7) {
            return 'please enter password more than 6 character';
          }
          return null;
        },
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 1)),
          labelText: widget.title,
          prefixIcon: Icon(Icons.lock_outline_sharp),
          suffixIcon: InkWell(
              onTap: () {
                setState(() {});
                securedPassword1 = !securedPassword1;
              },
              child: securedPassword1
                  ? Icon(Icons.visibility_outlined)
                  : Icon(Icons.visibility_off_outlined)),
        ),
      ),
    );
  }
}
