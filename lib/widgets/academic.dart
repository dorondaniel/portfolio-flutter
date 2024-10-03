import 'dart:math';

import 'package:flutter/material.dart';

class Academic extends StatefulWidget {
  final int index;

  Academic({super.key, required this.index});

  final Map<String, String> yearList = {
    '2020 - 2024':
        'B. E Computer Science and Engineering,\nRajalakshmi Institute of Technology',
    '2018 - 2020':
        '(XI/XII) Higher Secondary, Little Flower Matriculation Higher Secondary School',
    '2018':
        '(X) Higher Secondary, Magdalene Matriculation Higher Secondary School'
  };

  @override
  State<Academic> createState() => _AcademicState();
}

class _AcademicState extends State<Academic> {
  @override
  Widget build(BuildContext context) {
    //Size screen = MediaQuery.sizeOf(context);
    var acad = widget.yearList.keys.elementAt(widget.index);
    var screenSize = MediaQuery.sizeOf(context);
    var screenWidth = screenSize.width;

    const double maxCircleSize = 32.0;
    const double maxLineHeight = 40.0;
    const double maxFontSizeLarge = 20.0;
    const double maxFontSizeSmall = 16.0;
    const double maxMargin = 60.0;
    const double maxH = 148.0;
    const double maxW = 400.0;

    // Dynamic sizes, constrained by the maximums
    double circleSize =
        min(screenWidth * 0.08, maxCircleSize); // Dynamic size for the circle
    double lineHeight =
        min(screenWidth * 0.15, maxLineHeight); // Dynamic height for the line
    double fontSizeLarge = min(screenWidth * 0.06,
        maxFontSizeLarge); // Dynamic font size for large text
    double fontSizeSmall = min(screenWidth * 0.05,
        maxFontSizeSmall); // Dynamic font size for smaller text
    double dynamicMargin = min(screenWidth * 0.12, maxMargin);
    double containerH = min(screenWidth * 0.5, maxH);
    double containerW = min(screenWidth * 0.65, maxW);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: circleSize,
                    width: circleSize,
                    decoration: BoxDecoration(
                        //color:Color(0xffB17457),
                        shape: BoxShape.circle,
                        border:
                            Border.all(color: Color(0xff4A4947), width: 1.5)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: lineHeight,
                    width: 2,
                    decoration: BoxDecoration(
                      color: Color(0xffB17457),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.center,
                  child: SizedBox(
                    height: 26,
                    width: 65,
                    child: Text(
                      widget.yearList.keys.elementAt(widget.index),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: fontSizeSmall,
                        color: Color(0xff4A4947),
                        fontFamily: 'Vancouver',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: lineHeight,
                    width: 2,
                    decoration: BoxDecoration(
                      color: Color(0xffB17457),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: circleSize,
                    width: circleSize,
                    decoration: BoxDecoration(
                        //color: Color(0xffB17457),
                        shape: BoxShape.circle,
                        border:
                            Border.all(color: Color(0xff4A4947), width: 1.5)),
                  ),
                ),
              ],
            ),
            Container(
                //color: Colors.grey,
                height: containerH,
                width: containerW,
                margin: EdgeInsets.only(left: dynamicMargin),
                alignment: AlignmentDirectional.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    widget.yearList[acad]!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: fontSizeLarge,
                      color: Color(0xffB17457),
                      fontFamily: 'PlayFairMed',
                    ),
                  ),
                )),
            SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }
}
