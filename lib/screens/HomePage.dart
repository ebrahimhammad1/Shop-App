import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_5/Widgets/TextButtonWidget.dart';
import 'package:flutter_application_5/Widgets/appbar.dart';
import 'package:flutter_application_5/screens/login.dart';
import 'package:flutter_application_5/screens/signup.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidegts(appbarText: "shopy_app".tr()),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:
              CrossAxisAlignment.center, // علشان العناصر تتوسّط أفقيًا
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: Text(
                "welcome".tr(),
                style: TextStyle(
                  fontFamily: 'Suwannaphum',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 19, 216, 32),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Image.asset("assets/applogo-PNG.png", height: 250),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Image.network(
                    "https://cdn.shopify.com/s/files/1/0070/7032/files/shop-track-orders.jpg?v=1587665563",
                    height: 250,
                  ),
                ),
              ],
            ),

            SizedBox(height: 30),

            TextButtonWidget(
              buttonName: "login".tr(),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
            ),
            SizedBox(height: 15),
            TextButtonWidget(
              buttonName: "signup".tr(),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Signup()),
                );
              },
            ),
            SizedBox(height: 100), // مسافة بين الصور والزرار
          ],
        ),
      ),
    );
  }
}
