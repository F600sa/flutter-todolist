import 'package:flutter/material.dart';

import 'package:todolist/V/Screen/home.dart';

import 'package:get/get.dart';

import 'V/Screen/update.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(home: HomePage(),);
  }
}
