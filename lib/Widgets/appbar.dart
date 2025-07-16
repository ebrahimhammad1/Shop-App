import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AppbarWidegts extends StatelessWidget implements PreferredSizeWidget {
  const AppbarWidegts({super.key, required this.appbarText, this.stackCard});
  final Widget? stackCard;
  final String appbarText;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.lightGreenAccent,
      centerTitle: true,
      title: Text(
        appbarText,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      actions: [
        ?stackCard,
        IconButton(
          icon: Icon(Icons.language),
          onPressed: () {
            if (context.locale.languageCode == 'en') {
              context.setLocale(Locale('ar'));
            } else {
              context.setLocale(Locale('en'));
            }
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
