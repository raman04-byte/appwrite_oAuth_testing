import 'package:flutter/material.dart';
import 'package:testing/common/other/loading_elevated_button.dart';
import 'package:testing/common/utils.dart';
import 'package:testing/globals/appwrite.dart';
import 'package:testing/home.dart';
import 'package:testing/services/notification_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    Appwrite.account.get().then((value) {
      navigatorPushUntil(context, const HomePage());
    }).onError((error, stackTrace) {
      showError(context, "Error While Logging in", error.toString());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () async {
                await Appwrite.loginWithGitHub();
              },
              child: const Text('Login with Github')),
          LoadingElevatedButton(
            onPressed: () async {
              await Appwrite.loginWithDiscord();
              navigatorPush(context, const HomePage());
            },
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
