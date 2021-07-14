import 'package:flutter/material.dart';
import 'package:travel_app_ui/components/app_bar.dart';
import 'package:travel_app_ui/components/custom_navbar.dart';
import 'package:travel_app_ui/screens/components/body.dart';
import '../size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // have to call size config on the start page
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(isTransparent: true),
      body: Body(),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
