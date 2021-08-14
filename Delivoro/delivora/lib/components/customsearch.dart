import 'package:flutter/material.dart';
import 'package:outline_search_bar/outline_search_bar.dart';
import 'package:delivora/constant.dart';

class CustomSearchbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlineSearchBar(
      hintText: "Search Item",
      searchButtonIconColor: kSecondaryColor,
      clearButtonColor: kSecondaryColor,
      borderRadius: BorderRadius.circular(30),
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
    );
  }
}
