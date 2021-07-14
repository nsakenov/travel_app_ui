import 'package:flutter/material.dart';
import 'package:travel_app_ui/components/section_title.dart';
import 'package:travel_app_ui/screens/components/popular_places.dart';
import 'package:travel_app_ui/screens/components/top_travelers.dart';
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
          VerticalSpacing(of: 50),
          PopularPlaces(),
          VerticalSpacing(),
          SectionTitle(
            title: 'Top Travelers on Spark',
            press: () {},
          ),
          VerticalSpacing(of: 20),
          TopTravelers(),
          VerticalSpacing(),
        ],
      ),
    );
  }
}
