import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:testing/models/extensions/string_extensions.dart';

// Notification Service
void showMsg(BuildContext context, String title, String description) {
  title = title.sanitised;
  description = description.sanitised;
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Column(
        children: [
          Text(title),
          Text(description),
        ],
      ),
    ),
  );
}

void showError(BuildContext context, String title, String description) {
  title = title.sanitised;
  description = description.sanitised;
  log('Error: $title: $description');
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Column(
        children: [
          Text(title),
          Text(description),
        ],
      ),
      backgroundColor: Colors.red,
    ),
  );
}
