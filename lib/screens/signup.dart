import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_5/screens/HomePage.dart';
import 'package:flutter_application_5/Widgets/TextButtonWidget.dart';
import 'package:flutter_application_5/Widgets/appbar.dart';
import 'package:flutter_application_5/Widgets/textfiledwidget.dart';
import 'package:flutter_application_5/screens/product.dart';

class Signup extends StatelessWidget {
  Signup({super.key});
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppbarWidegts(appbarText: "signup".tr()),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              textfiledwidget(
                controller: nameController,
                Icon: Icon(Icons.person),
                labeltext: "full_name".tr(),
                type: TextInputType.text,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "enter_name".tr();
                  }
                  if (value[0] != value[0].toUpperCase()) {
                    return 'first_letter_uppercase'.tr();
                  }
                  return null;
                },
              ),
              textfiledwidget(
                controller: emailController,
                Icon: Icon(Icons.email),
                labeltext: "email".tr(),
                type: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'enter_email'.tr();
                  }
                  if (!value.contains('@')) {
                    return 'email_must_include_at'.tr();
                  }
                  return null;
                },
              ),
              textfiledwidget(
                controller: passwordController,
                Icon: Icon(Icons.lock),
                labeltext: "password".tr(),
                type: TextInputType.visiblePassword,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'enter_password'.tr();
                  }
                  if (value.length < 6) {
                    return 'password_min_length'.tr();
                  }
                  return null;
                },
              ),
              textfiledwidget(
                controller: confirmPasswordController,
                Icon: Icon(Icons.lock),
                labeltext: "confirm_password".tr(),
                type: TextInputType.visiblePassword,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'enter_password'.tr();
                  }
                  if (value.length < 6) {
                    return 'password_min_length'.tr();
                  }
                  if (value != passwordController.text) {
                    return 'passwords_do_not_match'.tr();
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextButtonWidget(
                buttonName: "signup".tr(),
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        content: Text("account_created".tr()),
                        actions: [
                          TextButtonWidget(
                            buttonName: "close".tr(),
                            onTap: () {
                              Navigator.pop(context);
                              nameController.clear();
                              emailController.clear();
                              passwordController.clear();
                              confirmPasswordController.clear();

                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (
                                        context,
                                        animation,
                                        secondaryAnimation,
                                      ) => Product(),
                                  transitionsBuilder:
                                      (
                                        context,
                                        animation,
                                        secondaryAnimation,
                                        child,
                                      ) {
                                        return FadeTransition(
                                          opacity: animation,
                                          child: child,
                                        );
                                      },
                                  transitionDuration: Duration(
                                    milliseconds: 500,
                                  ),
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
