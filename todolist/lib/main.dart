import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:todolist/V/Screen/home.dart';
=======
import 'package:get/get.dart';

import 'V/Screen/update.dart';
>>>>>>> refs/remotes/origin/main

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
=======
    return GetMaterialApp(home: Scaffold(body: UpdateScreen()),);
  }
}
>>>>>>> refs/remotes/origin/main
