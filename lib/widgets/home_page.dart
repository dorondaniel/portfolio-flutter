import 'package:flutter/material.dart';
import 'package:portfolio/widgets/image_wid.dart';
import 'package:portfolio/widgets/my_skills.dart';
import 'package:portfolio/widgets/text_profile.dart';
import 'package:portfolio/widgets/academic.dart';
import 'dart:math';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const double heading = 40;
    var screenSize = MediaQuery.sizeOf(context);
    var screenWidth = screenSize.width;
    double headSize = min(screenWidth, heading);

    return MaterialApp(
      title: "Portfolio App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: false,
          colorScheme: ColorScheme(
              brightness: Brightness.light,
              primary: Color(0xffB17457),
              onPrimary: Color(0xffFAF7F0),
              secondary: Color(0xff4A4947),
              onSecondary: Color(0xffD8D2C2),
              error: Color(0xffFF204E),
              onError: Color(0xff000000),
              surface: Color(0xffFAF7F0),
              onSurface: Color(0xffB17457))),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'DORON DANIEL',
              style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontFamily: 'Preospe',
                  letterSpacing: 4,
                  fontSize: 36),
            ),
          ),
          elevation: 10,
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Center(child: ImageWid()),
                Center(
                  child: TextProfile(),
                ),
                SizedBox(height: 10),
                Center(
                  child: Container(
                    width: 300,
                    height: 50,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffD8D2C2), width: 3),
                    ),
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      'Skillset',
                      //textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 32,
                          color: Color(0xffB17457),
                          fontFamily: 'Preospe'),
                    ),
                  ),
                ), //SkillSet Txt
                SizedBox(height: 24),
                Center(
                  child: MySkills(),
                ),
                Center(child: SizedBox(height: 32,),),
                Center(
                  child: Container(
                    width: 300,
                    height: 50,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffD8D2C2), width: 3),
                    ),
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      'Academics',
                      //textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 32,
                          color: Color(0xffB17457),
                          fontFamily: 'Preospe'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Center(child: Academic(index: 0)),
                Center(child: Academic(index: 1)),
                Center(child: Academic(index: 2)),
                SizedBox(
                  height: 24,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
