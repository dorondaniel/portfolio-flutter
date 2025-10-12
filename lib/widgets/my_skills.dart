import 'package:flutter/material.dart';
import 'package:portfolio/widgets/skill_cards.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';

class MySkills extends StatelessWidget {
  const MySkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        Expanded(
            child: Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          height: 200,
          margin: EdgeInsets.only(bottom: 10),
          child: ScrollLoopAutoScroll(
            reverseScroll: true,
            scrollDirection: Axis.horizontal,
            duration: Duration(seconds: 400),
            delay: Duration(seconds: 2),
            delayAfterScrollInput: Duration(seconds: 4),
            child: Wrap(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: 24,
              children: [
                SkillCards(
                    icon: 'assets/javalogo.png',
                    url: 'https://github.com/dorondaniel/WatchVault',
                    domainName: 'JAVA',
                    description:
                        'I\'ve been working with Java since the beginning of my studies, focusing on Android app development and Spring Boot using Java.'),
                SkillCards(
                    icon: 'assets/python.png',
                    url: 'https://github.com/dorondaniel/APISERVER',
                    domainName: 'PYTHON',
                    description:
                        'I\'m proficient in Python and it is my go-to programming language. Focusing on machine learning frameworks like TensorFlow and Keras.'),
                SkillCards(
                    icon: 'assets/android.png',
                    domainName: 'Android Native',
                    url: 'https://github.com/dorondaniel/BRING-OFF',
                    description:
                        'For the past year, personal Android app development projects, as well as academic projects, have been a focus of my work.'),
                SkillCards(
                    icon: 'assets/3ds_logo.png',
                    domainName: '3DS Enovia',
                    url: '#',
                    description:
                        'Worked on Dassault Systèmes 3DEXPERIENCE (ENOVIA) platform for Specification, Recipe, and MPP Management, handling structured data pipelines between PLM and Enterprise Data Lake.')
              ],
            ),
          ),
        ))
      ],
    );
  }
}
