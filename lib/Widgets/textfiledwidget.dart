import 'package:flutter/material.dart';

class textfiledwidget extends StatelessWidget {
  textfiledwidget({
    super.key,
    required this.Icon,
    required this.labeltext,
    required this.type,
    this.validator,
    required this.controller,
  });
  final Icon;
  final String labeltext;
  final TextInputType type;
  final String? Function(String?)? validator;

  TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(255, 226, 226, 226),
      ),
      child: TextFormField(
        obscureText: true,
        controller: controller,
        keyboardType: type,
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: labeltext,
          suffixIcon: Icon,
        ),
        validator: validator,
      ),
    );
  }
}
