import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List tasks = ["dwd", "wdwdw", "dwdwdwdwd", "wdwdw", "wfwwfwf"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App par "),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
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
                              tasks[index],
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
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
