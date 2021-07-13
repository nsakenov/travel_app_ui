import 'package:flutter/material.dart';
import 'package:travel_app_ui/components/section_title.dart';
import 'package:travel_app_ui/constants.dart';
import 'package:travel_app_ui/size_config.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeHeader(),
          VerticalSpacing(
            of: 50,
          ),
          SectionTitle(
            title: 'Right Now At Spark',
            press: () {},
          ),
        ],
      ),
    );
  }
}
