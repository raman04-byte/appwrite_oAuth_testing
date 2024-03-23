import 'package:flutter/material.dart';

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
