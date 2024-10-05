import 'package:flutter/material.dart';
import 'package:portfolio/config/mailer_conf.dart';
import 'package:portfolio/widgets/link_generator.dart';

class DesktopBody extends StatefulWidget {
  const DesktopBody({super.key});

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
  final subController = TextEditingController();
  final bodyController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Get screen size
    var screenSize = MediaQuery.of(context).size;
    var screenHeight = screenSize.height;
    var screenWidth = screenSize.width;
    double fontSize = 8;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: screenHeight * 0.4,
          width: screenWidth * 0.3,
          margin: EdgeInsets.all(30),
          //color: Colors.grey,
          child: Column(
            children: [
              LinkGenerator(
                imgLink:
                    'https://img.icons8.com/?size=24&id=12599&format=png&color=000000',
                text: 'Github',
                link: 'https://github.com/dorondaniel',
                font: fontSize,
              ),
              SizedBox(height: 10,),
              LinkGenerator(
                imgLink:
                    'https://img.icons8.com/?size=24&id=16733&format=png&color=000000',
                text: '+91-9940441675',
                link: 'https://wa.me/+919940441675',
                font: fontSize,
              ),
              SizedBox(height: 10,),
              LinkGenerator(
                imgLink:
                    'https://img.icons8.com/?size=24&id=OUPsEPLKIebZ&format=png&color=000000',
                text: 'Hackerrank',
                link: 'https://www.hackerrank.com/profile/dorondaniel_n_c1',
                font: fontSize,
              ),
              SizedBox(height: 10,),
              LinkGenerator(
                imgLink:
                    'https://img.icons8.com/?size=24&id=PZknXs9seWCp&format=png&color=000000',
                text: 'Leetcode',
                link: 'https://leetcode.com/u/dorondaniel',
                font: fontSize,
              ),
              SizedBox(height: 10,),
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
        Form(
          key: _formKey,
          child: SizedBox(
            height: screenHeight * 0.4,
            width: screenWidth * 0.3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Flexible(
                  child: TextFormField(
                    controller: subController,
                    validator: validateSub,
                    maxLines: 1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        gapPadding: 8,
                      ),
                      hintText: 'Subject: ',
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Color(0xff4A4947),
                        fontFamily: 'PlayFairMed',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Flexible(
                  flex: 2,
                  child: TextFormField(
                    controller: bodyController,
                    textAlignVertical: TextAlignVertical.top,
                    maxLines: 8,
                    // expands: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        gapPadding: 8,
                      ),
                      hintText: 'Body',
                      hintStyle: TextStyle(
                        color: Color(0xff4A4947),
                        fontSize: 14,
                        fontFamily: 'PlayFairMed',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        alignment: Alignment.center,
                        side: BorderSide(color: Color(0xff4A4947))),
                    onPressed: () {
                      _formKey.currentState!.validate();
                      sendEmailDesk(subController.text, bodyController.text);
                      setState(() {
                        subController.clear();
                        bodyController.clear();
                      });
                    },
                    child: Text(
                      'SEND',
                      style: TextStyle(
                          fontFamily: 'Vancouver',
                          letterSpacing: 2,
                          fontSize: 18,
                          color: Color(0xffB17457)),
                    )
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed
    subController.dispose();
    bodyController.dispose();
    super.dispose();
  }
}
