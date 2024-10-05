import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  final Widget mobileBody, desktopBody;
  
  const Contact({super.key, required this.mobileBody, required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      if (constraints.maxWidth < 620){
        return mobileBody;
      }else{
        return desktopBody;
      }
    }
    );
  }
}
