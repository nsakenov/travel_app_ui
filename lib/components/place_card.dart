import 'package:flutter/material.dart';
import 'package:travel_app_ui/models/TravelSpot.dart';
import 'package:travel_app_ui/models/User.dart';
import '../constants.dart';
import '../size_config.dart';

class PlaceCard extends StatelessWidget {
  PlaceCard({
    required this.travelSpot,
    required this.press,
  });

  final TravelSpot travelSpot;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(137),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.29,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  image: DecorationImage(
                    image: AssetImage(travelSpot.image),
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          Container(
            width: getProportionateScreenWidth(137),
            padding: EdgeInsets.all(
              getProportionateScreenWidth(kDefaultPadding),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [kDefualtShadow],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Text(
                  travelSpot.name,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                VerticalSpacing(of: 10),
                Travelers(users: travelSpot.users)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Travelers extends StatelessWidget {
  Travelers({required this.users});

  final List<User> users;

  @override
  Widget build(BuildContext context) {
    int totalUser = 0;
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenWidth(30),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ...List.generate(users.length, (index) {
            totalUser++;
            return Positioned(
              left: (22 * index).toDouble(),
              child: buildTravelerFace(index),
            );
          }),
          Positioned(
            left: (22 * totalUser).toDouble(),
            child: SizedBox(
              height: getProportionateScreenWidth(27),
              width: getProportionateScreenWidth(27),
              child: TextButton(
                style: ButtonStyle(
                  padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
                  backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27.0),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Icon(Icons.add),
              ),
            ),
          )
        ],
      ),
    );
  }

  ClipOval buildTravelerFace(int index) {
    return ClipOval(
      child: Image.asset(
        users[index].image,
        height: getProportionateScreenWidth(27),
        width: getProportionateScreenWidth(27),
        fit: BoxFit.cover,
      ),
    );
  }
}
