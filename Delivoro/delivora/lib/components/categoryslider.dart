import 'package:delivora/constant.dart';
import 'package:flutter/material.dart';
//import 'package:carousel_slider/carousel_slider.dart';

//TODO: After firebase integration convert into CarouselSliderBuilder
class CustomCarouselSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
        itemCount: kCategoryList.length,
        itemBuilder: (context, index) =>
            CategoryContainer(kCategoryList[index]),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

class CategoryContainer extends StatelessWidget {
  final String categoryTitle;
  CategoryContainer(this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        child: Center(
          child: Text(categoryTitle),
        ),
        width: 100,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: kSecondaryColor,
            boxShadow: [
              BoxShadow(
                color: Color(0xFF42A5F5),
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 6.0,
              )
            ]),
      ),
    );
  }
}
