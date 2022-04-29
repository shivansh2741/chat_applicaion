import 'package:flutter/material.dart';
import 'package:chat_application/LoginRegister_buttons.dart';
import 'package:chat_application/constants.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
              decoration: kTextDecorationFields,
            ),
            const SizedBox(
              height: 24.0,
            ),
            LoginRegisterButtons(
              buttonType: 'Register',
              colour: Colors.blueAccent,
              onPress: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}



