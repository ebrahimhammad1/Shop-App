import 'package:flutter/material.dart';
import 'package:flutter_application_5/Widgets/appbar.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidegts(appbarText: "card"),
      body: Center(child: Text("cardPage..")),
    );
  }
}
