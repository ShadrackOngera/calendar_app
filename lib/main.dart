import 'package:calendar_app/screens/home_page.dart';
import 'package:calendar_app/services/auth/auth_gate.dart';
import 'package:calendar_app/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightMode,
      home: const AuthGate(),
      debugShowCheckedModeBanner: false,
    );
  }
}
