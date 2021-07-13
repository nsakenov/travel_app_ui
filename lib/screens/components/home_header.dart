import 'package:flutter/material.dart';
import 'package:travel_app_ui/screens/components/search_fied.dart';
import '../../size_config.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/images/home_bg.png',
          height: getProportionateScreenWidth(315),
          fit: BoxFit.cover,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: getProportionateScreenHeight(80),
            ),
            Text(
              'Travelers',
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(50),
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  height: 0.5),
            ),
            Text('Travel Community App',
                style: TextStyle(
                  color: Colors.white,
                ))
          ],
        ),
        Positioned(
          bottom: getProportionateScreenWidth(-25),
          child: SearchField(),
        ),
      ],
    );
  }
}
