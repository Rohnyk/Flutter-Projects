import 'package:flutter/material.dart';
import 'package:namma_delivery/constants.dart';

class CategoriesCircularRow extends StatelessWidget {
  Expanded circularCategory() {
    return Expanded(
      child: Column(
        children: [
          Container(
            width: 80.0,
            height: 80.0,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.deepPurple),
          ),
          Text("Category")
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        circularCategory(),
        circularCategory(),
        circularCategory(),
        circularCategory()
      ],
    );
  }
}
