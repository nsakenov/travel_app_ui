import 'package:flutter/material.dart';
import 'package:travel_app_ui/components/section_title.dart';
import 'package:travel_app_ui/constants.dart';
import 'package:travel_app_ui/models/TravelSpot.dart';
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
          SizedBox(
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
                          image: AssetImage(travelSpots[0].image),
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
                        travelSpots[0].name,
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      VerticalSpacing(of: 10),
                      Travelers()
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Travelers extends StatelessWidget {
  const Travelers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int totalUser = 0;
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenWidth(30),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ...List.generate(travelSpots[0].users.length, (index) {
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
        travelSpots[0].users[index].image,
        height: getProportionateScreenWidth(27),
        width: getProportionateScreenWidth(27),
        fit: BoxFit.cover,
      ),
    );
  }
}
