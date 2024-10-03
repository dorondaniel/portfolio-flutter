import 'package:flutter/material.dart';
import 'package:portfolio/widgets/web_view.dart';

class SkillCards extends StatelessWidget {
  final String domainName, description;
  final String icon, url;

  const SkillCards({
    super.key,
    required this.icon,
    required this.url,
    required this.domainName, // Require domainName as a parameter
    required this.description, // Require description as a parameter
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 300,
          maxHeight: 400,
        ),
        child: Card(
          color: Color(0xffD8D2C2),
          elevation: 2,
          shadowColor: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: Image.asset(
                  icon,
                  width: 40,
                  height: 40,
                ),
              ),
              ListTile(
                title: Text(
                  domainName,
                  style: TextStyle(
                    fontFamily: 'Preospe',
                    fontSize: 20,
                    color: Color(0xff4A4947),
                  ),
                  textAlign: TextAlign.center,
                ),
                subtitle: Text(description,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'Vancouver',
                      fontSize: 16,
                      color: Color(0xff4A4947),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  const SizedBox(width: 8),
                  domainName != 'Rust'
                      ? TextButton(
                          child: const Text('EXPLORE'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WebViewApp(
                                        url: url,
                                        domain: domainName,
                                      )),
                            );
                          },
                        )
                      : TextButton(
                          child: const Text('Releasing Soon'),
                          onPressed: () {
                            /*TODO: implement rust */
                          },
                        ),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

// Future<void> _launchUrl(String url) async {
//   final Uri uri = Uri.parse(url); // Convert the string URL to a Uri
//   try {
//     if (await canLaunchUrl(uri)) {
//       // Check if the URL can be launched
//       await launchUrl(uri,
//           mode: LaunchMode.externalApplication); // Launch the URL
//     } else {
//       print('Could not launch $url'); // Log if the URL cannot be launched
//     }
//   } catch (e) {
//     print('Error launching URL: $e'); // Log any errors that occur
//   }
// }
}
