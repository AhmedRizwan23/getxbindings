import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/allbindings.dart';

import 'package:getx_tutorial/homepage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Allbindings(),
      theme: ThemeData.dark()
          .copyWith(appBarTheme: const AppBarTheme(color: Colors.red)),
      title: 'Get x',
      home: const MyHomePage(),
    );
  }
}
