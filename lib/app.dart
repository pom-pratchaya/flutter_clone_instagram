import 'package:flutter/material.dart';
import 'package:flutter_clone_instagram/login/view/login_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      title: "Clone Instagram",
    );
  }
}
