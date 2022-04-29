import 'package:flutter/material.dart';

class LoginRegisterButtons extends StatelessWidget {
  late String buttonType;
  late Color colour;
  VoidCallback onPress;

  LoginRegisterButtons({required this.buttonType,required this.colour,required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPress,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonType,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
