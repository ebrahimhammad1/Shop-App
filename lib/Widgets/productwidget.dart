import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_5/Widgets/TextButtonWidget.dart';
import 'package:flutter_application_5/models/gridviewmodel.dart';

class Productwidget extends StatelessWidget {
  const Productwidget({super.key, required this.model, this.button});
  final Gridviewmodel model;
  final Widget? button;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              child: Image.asset(model.photo, height: 100, fit: BoxFit.cover),
            ),
            SizedBox(height: 10),
            Text(
              model.title.tr(),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ?button,
          ],
        ),
      ),
    );
  }
}
