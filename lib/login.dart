import 'package:flutter/material.dart';
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
              onPressed: () {}, child: const Text('Login with Github')),
          LoadingElevatedButton(
            onPressed: () async {},
            label: const Text('Login with Discord'),
            icon: const Icon(Icons.login),
          ),
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
