import 'package:flutter/material.dart';
import 'package:testing/common/other/loading_elevated_button.dart';
import 'package:testing/globals/appwrite.dart';
import 'package:testing/services/notification_service.dart';
import 'package:testing/common/other/loading_elevated_button.dart';

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
          ElevatedButton(
              onPressed: () async{
                await Appwrite.loginWithGitHub();
              },
              child: const Text('Login with Github')),
          ElevatedButton(
              onPressed: () {}, child: const Text('Login with Discord')),
          ElevatedButton(
              onPressed: () {}, child: const Text('Login with FaceBook')),
          LoadingElevatedButton(
            icon: const Icon(Icons.login),
            onPressed: () async {
              throw 'Linkedin ka toh nhi ho payega 😢';
            },
            label: const Text('Login with LinkedIn'),
          ),
        ],
      ),
    );
  }
}
