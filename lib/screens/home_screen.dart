import 'package:flutter/material.dart';
import 'package:travel_app_ui/constants.dart';
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
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
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
}
