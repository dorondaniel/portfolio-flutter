import 'package:flutter/material.dart';
import 'package:portfolio/styles/text_styles.dart';
import 'package:typewritertext/typewritertext.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    final valueController = TypeWriterController.fromValue(
        TypeWriterValue(
            ['Engineer', 'Developer', 'Programmer', 'Hardware Buff', 'Cyber Enthusiast']),
        repeat: true,
        duration: const Duration(milliseconds: 200));

    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Text(
            'I Am',
            textAlign: TextAlign.center,
            style: CustomText.customTextStyle(context, Color(0xff4A4947)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 15),
          child: Text(
            'Doron Daniel',
            textAlign: TextAlign.center,
            style: CustomText.customTextStyleFont(context, Color(0xffB17457)),
          ),
        ),
        TypeWriter(
            controller: valueController,
            builder: (context, value) {
              return Text(
                value.text,
                maxLines: 1,
                style: CustomText.customTextStyle(context, Color(0xff4A4947)),
              );
            }),
      ],
    );
  }
}
