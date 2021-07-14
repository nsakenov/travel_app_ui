import 'package:flutter/material.dart';
import 'package:travel_app_ui/components/place_card.dart';
import 'package:travel_app_ui/constants.dart';
import 'package:travel_app_ui/models/TravelSpot.dart';
import 'package:travel_app_ui/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(25),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(bottom: 25),
            child: Wrap(
              runSpacing: 20,
              alignment: WrapAlignment.spaceBetween,
              children: [
                ...List.generate(
                  3,
                  (index) => PlaceCard(
                    travelSpot: travelSpots[index],
                    isFullCard: true,
                    press: () {},
                  ),
                ),
                Container(
                  height: getProportionateScreenWidth(350),
                  width: getProportionateScreenWidth(158),
                  decoration: BoxDecoration(
                    color: Color(0xFF6A6C93).withOpacity(0.09),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 2,
                      color: Color(0xFFEBE8F6),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: getProportionateScreenWidth(53),
                        width: getProportionateScreenWidth(53),
                        child: TextButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.zero),
                            backgroundColor:
                                MaterialStateProperty.all(kPrimaryColor),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60.0),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: getProportionateScreenWidth(35),
                          ),
                        ),
                      ),
                      VerticalSpacing(of: 10),
                      Text(
                        'Add New Place',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 11),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
