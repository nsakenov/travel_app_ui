import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app_ui/screens/events/events_screen.dart';

import '../constants.dart';
import '../size_config.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(kDefaultPadding),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavItem(
                title: 'Events',
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EventsScreen(),
                    ),
                  );
                },
                icon: 'assets/icons/calendar.svg',
              ),
              NavItem(
                title: 'Chat',
                press: () {},
                icon: 'assets/icons/chat.svg',
              ),
              NavItem(
                title: 'Friends',
                press: () {},
                icon: 'assets/icons/friendship.svg',
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  NavItem({
    required this.icon,
    required this.title,
    this.isActive = false,
    required this.press,
  });

  final String icon, title;
  final bool isActive;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(5),
        height: getProportionateScreenWidth(65),
        width: getProportionateScreenWidth(65),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isActive) kDefualtShadow],
        ),
        child: Column(
          children: [
            SvgPicture.asset(
              icon,
              height: 28,
              color: kTextColor,
            ),
            Spacer(),
            Text(
              title,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
