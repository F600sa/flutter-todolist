import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import '../../C/taskController.dart';
import 'add.dart';

var controllerTask = Get.put(ControllerTask());

class HomePage extends StatelessWidget {
  HomePage({super.key});
  // List tasks = ["dwd", "wdwdw", "dwdwdwdwd", "wdwdw", "wfwwfwf", "sssss"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.to(AddTast());
          },
          icon: Icon(Icons.add),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () => (ListView.builder(
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
                                child: Text('${controllerTask.tasks[index]}')),
                          ),
                          Container(
                              alignment: Alignment.centerRight,
                              child: IconButton(
// <<<<<<< HEAD
//                               onPressed: () {},
//                               icon: Icon(Icons.edit),
//                             ),
//                           ),
//                           Container(
//                               child: IconButton(
//                                   onPressed: () {
//                                     // print(controllerTask.tasks[index]);
//                                     // controllerTask.tasks[index];
// =======

                                  onPressed: () {
                                    print(controllerTask.tasks[index]);

                                    //  controllerTask.tasks[index];

                                    Get.snackbar(
                                        'deleted', controllerTask.tasks[index]);
                                    controllerTask.delTask(index);
                                    // controllerTask.delTask(index);
                                  },
                                  icon: Icon(Icons.delete)))
                        ],
                      ),
                    ),
                  );
                },
              )),
            ),
          ),
        ],
      ),
    );
  }
}
