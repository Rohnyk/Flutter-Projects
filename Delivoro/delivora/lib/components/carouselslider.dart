import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

//TODO: After firebase integration convert into CarouselSliderBuilder
class CustomCarouselSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final aspectScreenRation =
        MediaQuery.of(context).size.width / MediaQuery.of(context).size.height;
    return CarouselSlider(
      options: CarouselOptions(
        height: 180.0,
        aspectRatio: aspectScreenRation,
        scrollDirection: Axis.horizontal,
        enlargeCenterPage: true,
      ),
      items: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: NetworkImage(
                  'https://www.hlimg.com/images/things2do/738X538/end_1510669442t.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
