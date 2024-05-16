// ignore_for_file: prefer_const_constructors, avoid_web_libraries_in_flutter, unused_import

import 'package:deliveryapp/main.dart ';


import 'package:deliveryapp/auth/login_or_register.dart';
import 'package:deliveryapp/models/restaurant.dart';
import 'package:deliveryapp/pages/longin_page.dart';
import 'package:deliveryapp/pages/register_page.dart';
import 'package:deliveryapp/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => Restaurant(),
        ),
      ],
      child:  MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
