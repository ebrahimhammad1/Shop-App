import 'package:flutter/material.dart';
import 'package:flutter_application_5/screens/login.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({super.key, required this.buttonName, this.onTap});
  final String buttonName;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 6, 221, 24),
        fixedSize: Size(170, 50),
      ),
      onPressed: onTap,
      child: Text(
        buttonName,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
    );
  }
}
