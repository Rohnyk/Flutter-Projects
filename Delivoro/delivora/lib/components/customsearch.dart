import 'package:flutter/material.dart';
import 'package:outline_search_bar/outline_search_bar.dart';

class CustomSearchbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlineSearchBar(
      hintText: "Search Item",
      searchButtonIconColor: Color(0xFFDF6E63),
      clearButtonColor: Color(0xFFDF6E63),
      borderRadius: BorderRadius.circular(30),
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      backgroundColor: Color(0xFFC6C6C6),
    );
  }
}
