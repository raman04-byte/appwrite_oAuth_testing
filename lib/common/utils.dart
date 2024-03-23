import 'package:flutter/material.dart';

Future<dynamic> navigatorPush(BuildContext context, Widget page) {
  return Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => page));
}

Future<dynamic> navigatorPushUntil(BuildContext context, Widget page) {
  return Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => page), (route) => false);
}
