<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App par "),
      ),
      body: Column(
        children: [
          Container(
            height: 90,
            child: Card(
              color: Color.fromARGB(152, 255, 255, 255),
              margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
              // shadowColor: Color.fromRGBO(0, 71, 147, 1),
              child: Row(
                children: [
                  Container(
                    width: 249,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: Text(
                        "TASK1aaaaaaaaaaaaaaaaaa1",
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.edit),
                    ),
                  ),
                  Container(
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.delete)))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
=======
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
>>>>>>> refs/remotes/origin/main
