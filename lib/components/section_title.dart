import 'package:flutter/material.dart';
import '../constants.dart';
import '../size_config.dart';

class SectionTitle extends StatelessWidget {
  SectionTitle({
    required this.title,
    required this.press,
  });

  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(kDefaultPadding),
      ),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          GestureDetector(onTap: press, child: Text('See All'))
        ],
      ),
    );
  }
}
