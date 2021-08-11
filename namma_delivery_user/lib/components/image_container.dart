import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final height;
  final width;

  ImageContainer({@required this.height, @required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      //TODO: Change the Image here
      height: height,
      width: width,
      margin: EdgeInsets.all(10),
      child: Image(
        fit: BoxFit.fill,
        //random image
        image: NetworkImage(
            'https://lh3.googleusercontent.com/proxy/2C618VJmyYiB384kIdAbHxGUhfZJsVwCvcAivFlXUGk3RmJTlokl1q8f8iSuF2jUaEwpWCBGCImrNq5kO_EmHRM9XDA6xTbL4PIAHbX2NvT_zrwCC7tELU2lVZ6unU1x9G-Iw3Q'),
      ),
    );
  }
}
