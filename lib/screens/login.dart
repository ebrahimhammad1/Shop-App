import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_5/screens/HomePage.dart';
import 'package:flutter_application_5/Widgets/TextButtonWidget.dart';
import 'package:flutter_application_5/Widgets/appbar.dart';
import 'package:flutter_application_5/Widgets/textfiledwidget.dart';
import 'package:flutter_application_5/screens/product.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppbarWidegts(appbarText: "login".tr()),
      body: Center(
        child: Form(
          key: _formKey,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              textfiledwidget(
                Icon: Icon(Icons.email),
                labeltext: "email".tr(),
                type: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "enter_email".tr();
                  }
                  if (!value.contains('@')) {
                    return "must_contain_at".tr();
                  }
                  return null;
                },
                controller: emailController,
              ),
              textfiledwidget(
                controller: passwordController,
                Icon: Icon(Icons.lock),
                labeltext: "password".tr(),
                type: TextInputType.visiblePassword,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "enter_password".tr();
                  }
                  if (value.length < 6) {
                    return "min_password".tr();
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextButtonWidget(
                buttonName: "login".tr(),
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        content: Text("account_signin".tr()),
                        actions: [
                          TextButtonWidget(
                            buttonName: "Close".tr(),
                            onTap: () {
                              Navigator.pop(context);
                              emailController.clear();
                              passwordController.clear();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Product(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
