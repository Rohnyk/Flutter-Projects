import 'package:flutter/material.dart';
import 'package:delivora/components/customAppBar.dart';
import 'package:delivora/components/carouselslider.dart';
import 'package:delivora/components/controltabs.dart';
import 'package:delivora/constant.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            CustomAppBar(),
            SliverPadding(
              padding: EdgeInsets.only(bottom: 20.0),
            ),
            SliverFillRemaining(
              child: Column(
                children: <Widget>[
                  //TODO: Change into Carousal Builder after integrating with firebase
                  CustomCarouselSlider(),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: ControlTabs(kPageTab, false));
  }
}
