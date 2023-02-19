import 'package:flutter/material.dart';

class CustumPasswordFeild extends StatefulWidget {
  final String title;
  CustumPasswordFeild({required this.title});

  @override
  State<CustumPasswordFeild> createState() => _CustumPasswordFeildState();
}

class _CustumPasswordFeildState extends State<CustumPasswordFeild> {
  bool securedPassword1 = true;

  bool securedPassword2 = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      child: TextFormField(
        keyboardType: TextInputType.visiblePassword,
        obscureText: securedPassword1,
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
