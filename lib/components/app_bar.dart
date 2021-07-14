import 'package:flutter/material.dart';
import '../constants.dart';

AppBar buildAppBar({
  bool isTransparent = false,
  String? title,
}) {
  return AppBar(
    title: Text(
      title == null ? '' : title,
      style: TextStyle(
        color: kTextColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    backgroundColor: isTransparent ? Colors.transparent : Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: Icon(Icons.menu),
      color: kIconColor,
      onPressed: () {},
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: ClipOval(
          child: Image.asset('assets/images/profile.png'),
        ),
      )
    ],
  );
}
