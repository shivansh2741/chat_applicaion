import 'package:flutter/material.dart';
import 'package:chat_application/LoginRegister_buttons.dart';
import 'package:chat_application/constants.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'lightning_logo',
              child: Container(
                child: Image.asset('images/logo.png'),
                height: 90.0,
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: kTextDecorationFields.copyWith(
                hintText: 'Enter your email',
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: kTextDecorationFields.copyWith(
                hintText: 'Enter your password.',
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            LoginRegisterButtons(
              buttonType: 'Login',
              colour: Colors.lightBlueAccent,
              onPress: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
