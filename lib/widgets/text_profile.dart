import 'package:flutter/material.dart';
import 'package:portfolio/widgets/animated_text.dart';

class TextProfile extends StatelessWidget {
  const TextProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal, // Horizontal layout
      children: [
        Expanded(
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                height: 200,
                margin: EdgeInsets.only(right: 10, left: 10,),
                //color: Colors.grey,
              ),
              const Positioned(child: AnimatedText()), // Layered text on top
            ],
          ),

        ),
      ],
    );
  }
}
