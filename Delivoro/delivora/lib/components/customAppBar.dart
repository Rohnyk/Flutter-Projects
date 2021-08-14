import 'package:flutter/material.dart';
import 'package:delivora/components/customsearch.dart';
import 'package:delivora/constant.dart';
import 'package:delivora/screens/profilescreen.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      floating: false,
      elevation: 0,
      expandedHeight: 250.0,

      //TODO 1: Complete profile in home page after integrating with firebase
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        background: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/profile');
                          },
                          child: Hero(
                            tag: 'proflepichero',
                            child: CircleAvatar(
                              child: Text("C"),
                              backgroundColor: kSecondaryColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Hi Customer'),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      onPressed: () {},
                      padding: EdgeInsets.only(left: 80),
                      icon: Icon(
                        Icons.location_pin,
                        color: kSecondaryColor,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Delivora",
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Balsamiq Sans',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
      actions: <Widget>[],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(0.0),
        child: CustomSearchbar(),
      ),
    );
  }
}
