import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:testing/login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Client client = Client();
  client
      .setEndpoint('http://54.242.44.19/v1')
      .setProject('65f31e0dee7417a5dc36')
      .setSelfSigned(status: true);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}

// import 'package:appwrite/appwrite.dart';

// Client client = Client();
// client
//     .setEndpoint('http://54.242.44.19/v1')
//     .setProject('65f31e0dee7417a5dc36')
//     .setSelfSigned(status: true); 