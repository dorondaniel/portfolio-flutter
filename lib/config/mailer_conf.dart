import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:url_launcher/url_launcher.dart';

String? validateSub(String? subject) {
  if (subject == null || subject.isEmpty) {
    return 'Subject is Required';
  }
  return null;
}

Future<void> sendEmailDesk(String sub, String bodyInp) async {
  final String subject = Uri.encodeComponent(sub);
  final String body = Uri.encodeComponent(bodyInp);
  final Uri params =
      Uri(scheme: 'mailto', path: 'idorondaniel@gmail.com', query: 'subject=$subject&body=$body');

  var url = params.toString();

  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}

Future<void> sendEmailMob(String sub, String body) async {
  final Email email =
      Email(subject: sub, body: body, recipients: ['idorondaniel@gmail.com'], isHTML: false);

  try {
    await FlutterEmailSender.send(email);
  } catch (error) {
    throw ('Could not send email: $error');
  }
}
