import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:namma_delivery/constants.dart';
import 'package:outline_search_bar/outline_search_bar.dart';
import 'package:namma_delivery/components/category_circular.dart';
import 'package:namma_delivery/components/image_container.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //TODO: Change the Font Family
        title: Text(
          "Namma Delivery",
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
          ),
        ],
        bottom: PreferredSize(
          child: Column(
            children: [
              OutlineSearchBar(
                  searchButtonPosition: SearchButtonPosition.leading,
                  margin: EdgeInsets.fromLTRB(10, 5, 10, 5)),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
                child: Row(
                  children: [
                    Icon(FontAwesomeIcons.mapMarkerAlt),
                    //TODO: Display location here
                    Text("Service Soon to be Available")
                  ],
                ),
              )
            ],
          ),
          preferredSize: Size.fromHeight(90),
        ),
      ),
      //TODO: Complete the Drawer Widgit
      drawer: Drawer(),
      body: Column(
        children: [
          ImageContainer(
            height: 150.0,
            width: double.infinity,
          ),
          Column(
            children: [
              CategoriesCircularRow(),
              SizedBox(
                height: 20,
              ),
              CategoriesCircularRow(),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: ImageContainer(
                  height: 120.0,
                  width: 25.0,
                ),
              ),
              Expanded(
                  child: ImageContainer(
                height: 120.0,
                width: 25.0,
              )),
            ],
          )
        ],
      ),
    );
  }
}
