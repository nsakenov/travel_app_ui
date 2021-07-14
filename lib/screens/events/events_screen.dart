import 'package:flutter/material.dart';
import 'package:travel_app_ui/components/app_bar.dart';
import 'package:travel_app_ui/components/custom_navbar.dart';
import 'package:travel_app_ui/screens/events/components/body.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'New Events'),
      bottomNavigationBar: CustomNavBar(),
      body: Body(),
    );
  }
}
