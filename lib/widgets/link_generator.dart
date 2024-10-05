//import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkGenerator extends StatefulWidget {
  final String imgLink, text, link;
  final double font;

  const LinkGenerator(
      {super.key,
      required this.font,
      required this.imgLink,
      required this.text,
      required this.link});

  urlLauncher(BuildContext context, String link, String text) async {
    Uri encodedUrl = Uri.parse(link);

    if (!await launchUrl(encodedUrl)) {
      throw Exception('Could not launch $link');
    }
    // else {
    //   // For other platforms, open the WebView
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => WebViewApp(
    //         url: link,
    //         domain: text,
    //       ),
    //     ),
    //   );
    // }
  }

  @override
  State<LinkGenerator> createState() => _LinkGeneratorState();
}

class _LinkGeneratorState extends State<LinkGenerator> {
  @override
  Widget build(BuildContext context) {
    //var widthS = MediaQuery.sizeOf(context).width;
    return Flexible(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 8.0, left: 16.0),
            child: InkWell(
              onTap: () => widget.urlLauncher(context, widget.link, widget.text),
              hoverColor: Colors.transparent,
              child: Image.network(widget.imgLink),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8.0, left: 16.0),
            child: InkWell(
              onTap: () => widget.urlLauncher(context, widget.link, widget.text),
              hoverColor: Colors.transparent,
              child: AutoSizeText(
                widget.text,
                maxLines: 1,
                minFontSize: widget.font,
                //maxFontSize: 16,
                style: TextStyle(
                    fontFamily: 'Preospe',
                    color: Color(0xffB17457),
                    //fontSize: widget.font,
                    letterSpacing: 2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
