// import 'dart:js_util';

// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:get/get.dart';
// import 'package:todolist/V/Screen/update.dart';

// import '../../C/taskController.dart';
// import 'add.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../C/taskController.dart';
import 'add.dart';

var controllerTask  =Get.put(ControllerTask());
// // var item =TextEditingController();
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
 
//   @override
//   Widget build(BuildContext context) {
//     var controllerTask1  =Get.put(ControllerTask());
      
//     return Scaffold (
//       appBar: AppBar(leading: IconButton(onPressed: (){
//         Get.to(AddTast());
//       }, icon: Icon(Icons.back_hand),),),
//       body:  ListView.builder(
//           itemCount: controllerTask1.tasks.length,
//           prototypeItem: ListTile(
//             // title: Text(items.first),
//           ),
//           itemBuilder: (context, index) {
//             return ListTile(
//               title: Text(controllerTask1.tasks[index]),
//             );
//           },
//         ),    );
//   }
// }


class HomePage extends StatelessWidget {
  HomePage({super.key});
  // List tasks = ["dwd", "wdwdw", "dwdwdwdwd", "wdwdw", "wfwwfwf", "sssss"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
        Get.to(AddTast());
      }, icon: Icon(Icons.add),),),
        // title: Text("App par "),
      
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: controllerTask.tasks.length,
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
                            child: 
                           Text('${controllerTask.tasks[index]}')
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
                              
                                onPressed: () {
                                  print(controllerTask.tasks[index]);
                                 controllerTask.deletTodo(controllerTask.tasks[index]);

                                }, icon: Icon(Icons.delete)))
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

