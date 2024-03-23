import 'package:flutter/material.dart';
import 'package:testing/common/other/loading_icon_button.dart';
import 'package:testing/common/utils.dart';
import 'package:testing/globals/appwrite.dart';
import 'package:testing/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          LoadingIconButton(
              onPressed: () async {
                await Appwrite.account.deleteSessions();
                navigatorPush(context, const LoginPage());
              },
              icon: const Icon(Icons.logout)),
        ],
      ),
      body: Column(
        children: [
          const Text('Welcome to the Home Page!'),
          FutureBuilder(
            future: Appwrite.account.get(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              }
              if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              }
              return Text('User: ${snapshot.data?.name}');
            },
          ),
        ],
      ),
    );
  }
}
