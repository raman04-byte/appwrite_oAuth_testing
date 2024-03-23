import 'package:flutter/material.dart';
import 'package:testing/common/other/loading_elevated_button.dart';
import 'package:testing/globals/appwrite.dart';
import 'package:testing/services/notification_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Column(
        children: [
          LoadingElevatedButton(
            onPressed: () async {
              await Appwrite.loginWithGitHub();
              showMsg(context, "Github Success ", 'Des');
            },
            icon: const Icon(Icons.abc),
            label: const Text('Login with Github'),
          ),
          ElevatedButton(
              onPressed: () {}, child: const Text('Login with Discord')),
          ElevatedButton(
              onPressed: () {}, child: const Text('Login with FaceBook')),
          ElevatedButton(
              onPressed: () {}, child: const Text('Login with LinkedIn')),
        ],
      ),
    );
  }
}
