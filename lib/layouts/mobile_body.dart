import 'package:flutter/material.dart';
import 'package:portfolio/config/mailer_conf.dart';
import 'package:portfolio/widgets/link_generator.dart';

class MobileBody extends StatefulWidget {
  const MobileBody({super.key});

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
  final subController = TextEditingController();
  final bodyController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenHeight = screenSize.height;
    var screenWidth = screenSize.width;

    // Set proportions based on screen size
    double containerHeight = screenHeight * 0.5;
    double containerWidth2 =
        screenWidth * 0.6; // 60% of screen width for second container
    double textFieldWidth = screenWidth * 0.6;

    double fontSize = 16;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: containerHeight,
          width: containerWidth2,
          margin: EdgeInsets.all(10),
          //color: Colors.grey,
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.only(left: 4.0, top: 4),
                  width: textFieldWidth * 1.5,
                  child: TextFormField(
                    controller: subController,
                    validator: validateSub,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        gapPadding: 8,
                      ),
                      hintText: 'Subject: ',
                      hintStyle: TextStyle(
                        color: Color(0xff4A4947),
                        fontFamily: 'PlayFairMed',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(left: 4.0, top: 4),
                    width: textFieldWidth * 1.5,
                    child: TextFormField(
                      controller: bodyController,
                      textAlignVertical: TextAlignVertical.top,
                      maxLines: null,
                      expands: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          gapPadding: 8,
                        ),
                        hintText: 'Body',
                        hintStyle: TextStyle(
                          color: Color(0xff4A4947),
                          fontFamily: 'PlayFairMed',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            alignment: Alignment.center,
                            side: BorderSide(color: Color(0xff4A4947))),
                        onPressed: () {
                          _formKey.currentState!.validate();
                          sendEmailMob(subController.text,
                              bodyController.text);
                          setState(() {
                            subController.clear();
                            bodyController.clear();
                          });
                        },
                        child: Text(
                          'SEND',
                          style: TextStyle(
                              fontFamily: 'Vancouver',
                              fontSize: 18,
                              letterSpacing: 2,
                              color: Color(0xffB17457)),
                        )),
                    SizedBox(width: 16,),
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          height: screenHeight * 0.2,
          width: screenWidth * 0.7,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.only(left: 30),
          //color: Colors.grey,
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LinkGenerator(
                imgLink:
                    'https://img.icons8.com/?size=24&id=12599&format=png&color=000000',
                text: 'Github',
                link: 'https://github.com/dorondaniel',
                font: fontSize,
              ),
              LinkGenerator(
                imgLink:
                    'https://img.icons8.com/?size=24&id=16733&format=png&color=000000',
                text: '+91-9940441675',
                link: 'https://wa.me/+919940441675',
                font: fontSize,
              ),
              LinkGenerator(
                imgLink:
                    'https://img.icons8.com/?size=24&id=OUPsEPLKIebZ&format=png&color=000000',
                text: 'Hackerrank',
                link: 'https://www.hackerrank.com/profile/dorondaniel_n_c1',
                font: fontSize,
              ),
              LinkGenerator(
                imgLink:
                    'https://img.icons8.com/?size=24&id=PZknXs9seWCp&format=png&color=000000',
                text: 'Leetcode',
                link: 'https://leetcode.com/u/dorondaniel',
                font: fontSize,
              ),
              LinkGenerator(
                imgLink:
                    'https://img.icons8.com/?size=24&id=8808&format=png&color=000000',
                text: 'LinkedIn',
                link: 'https://www.linkedin.com/in/doron-d-7b3b35200',
                font: fontSize,
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    subController.dispose();
    bodyController.dispose();
    super.dispose();
  }
}
