import 'package:flutter/material.dart';

class ImageWid extends StatelessWidget {
  const ImageWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Image.asset(
        'assets/image_oval.png',
        width: 300,
        height: 300,
        scale: 2,
      ),
    );
  }
}
