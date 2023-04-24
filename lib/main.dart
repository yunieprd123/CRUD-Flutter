import 'package:flutter/material.dart';

import 'login_google_page.dart';
import 'package:plant_shop/login_google_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginGooglePage(),
      theme:
          ThemeData(brightness: Brightness.light, primarySwatch: Colors.green),
    );
  }
}
