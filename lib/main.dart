// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Lato',
        scaffoldBackgroundColor: Color.fromARGB(255, 47, 53, 92),
        brightness: Brightness.dark,
      ),
      initialRoute: AppRoutes.login,
      routes: AppRoutes.pages,
    );
  }
}
