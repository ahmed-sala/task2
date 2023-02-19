import 'package:first_google/bottom_button.dart';
import 'package:first_google/number_feild.dart';
import 'package:first_google/password_feild.dart';
import 'package:first_google/text_feilds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            children: [
              ClipPath(
                clipper: WaveClipperTwo(
                  flip: true,
                  reverse: false,
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height * .3,
                  color: Colors.purple,
                  child: Center(
                    child: Text(
                      "Register",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CustumTextFeild(
                  title: 'Full Name', icon: Icons.person, hint: 'Ahmed Salah'),
              SizedBox(
                height: 20,
              ),
              CustumTextFeild(
                  title: 'Email',
                  icon: Icons.mail_outline_outlined,
                  hint: 'test@test.com'),
              SizedBox(
                height: 20,
              ),
              CustumPasswordFeild(title: 'Password'),
              SizedBox(
                height: 20,
              ),
              CustumPasswordFeild(title: 'Re-Enter Password'),
              SizedBox(
                height: 20,
              ),
              CustumNumberFeild(title: 'Phone Number'),
              SizedBox(
                height: 20,
              ),
              BottomButton(
                  title: 'Register',
                  color: Colors.purple,
                  textCo: Colors.white),
              SizedBox(
                height: 15,
              ),
              BottomButton(
                  title: 'Login', color: Colors.white, textCo: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
