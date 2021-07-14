import 'package:flutter/material.dart';
import 'package:travel_app_ui/models/User.dart';
import '../../constants.dart';
import '../../size_config.dart';

class TopTravelers extends StatelessWidget {
  const TopTravelers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(kDefaultPadding),
      ),
      padding: EdgeInsets.all(getProportionateScreenWidth(24)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [kDefualtShadow],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...List.generate(
            topTravelers.length,
            (index) => UserCard(
              user: topTravelers[index],
            ),
          )
        ],
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  UserCard({required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: Image.asset(
            user.image,
            height: getProportionateScreenWidth(55),
            width: getProportionateScreenWidth(55),
            fit: BoxFit.cover,
          ),
        ),
        VerticalSpacing(of: 10),
        Text(
          user.name,
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
