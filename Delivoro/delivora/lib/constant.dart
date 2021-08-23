import 'package:flutter/material.dart';

const kSecondaryColor = Color(0xff24C8D0);

const kCategoryList = [
  "All",
  "Grocery",
  "Vegetables",
  "Food",
  "Medicine",
];

const kPageTab = [
  Tab(
    icon: Icon(
      Icons.home,
      color: kSecondaryColor,
    ),
  ),
  Tab(
    icon: Icon(
      Icons.shopping_cart,
      color: kSecondaryColor,
    ),
  ),
  Tab(
    icon: Icon(
      Icons.notifications,
      color: kSecondaryColor,
    ),
  ),
  Tab(
    icon: Icon(
      Icons.settings,
      color: kSecondaryColor,
    ),
  )
];

const kInputDecorationTextField = InputDecoration(
  labelText: 'Name',
  labelStyle: TextStyle(
    color: Colors.white,
  ),
  contentPadding: EdgeInsets.symmetric(horizontal: 10),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kSecondaryColor, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kSecondaryColor, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
);

const kInputDecorationSignInTextField = InputDecoration(
  labelText: "Phone Number",
  prefixText: "+91 ",
  contentPadding: EdgeInsets.symmetric(horizontal: 10),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kSecondaryColor, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kSecondaryColor, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
);
