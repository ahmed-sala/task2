import 'package:first_google/email_feild.dart';
import 'package:first_google/home_screen.dart';
import 'package:first_google/login_screen.dart';
import 'package:first_google/number_feild.dart';
import 'package:first_google/password_feild.dart';
import 'package:first_google/text_feilds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class RegisterSceen extends StatefulWidget {
  @override
  State<RegisterSceen> createState() => _RegisterSceenState();
}

class _RegisterSceenState extends State<RegisterSceen> {
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  var rePasswordController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          elevation: 0,
        ),
        // resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ThemeData().colorScheme.copyWith(
                    primary: Colors.purple,
                  ),
            ),
            child: Form(
              key: formKey,
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
                      emailController: nameController,
                      title: 'Full Name',
                      icon: Icons.person,
                      hint: 'Ahmed Salah'),
                  SizedBox(
                    height: 20,
                  ),
                  EmailTextFeild(
                      emailController: emailController,
                      title: 'Email',
                      icon: Icons.mail_outline_outlined,
                      hint: 'test@test.com'),
                  SizedBox(
                    height: 20,
                  ),
                  CustumPasswordFeild(
                      repasswordController: passwordController,
                      passwordController: passwordController,
                      title: 'Password'),
                  SizedBox(
                    height: 20,
                  ),
                  CustumPasswordFeild(
                      repasswordController: passwordController,
                      passwordController: rePasswordController,
                      title: 'Re-Enter Password'),
                  SizedBox(
                    height: 20,
                  ),
                  CustumNumberFeild(title: 'Phone Number'),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(
                            horizontal: size.width * .31, vertical: 15),
                      ),
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                    ),
                    onPressed: () {
                      if (!formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => HomeScreen(),
                          ),
                        );
                      }
                    },
                    child: Text('Register'),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(
                            horizontal: size.width * .35, vertical: 15),
                      ),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => LoginScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'login',
                      style: TextStyle(color: Colors.purple),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
