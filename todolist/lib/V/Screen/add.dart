import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todolist/V/Screen/add.dart';
import 'package:todolist/V/Screen/home.dart';
import '../../C/taskController.dart';
import '../../C/taskController.dart';
import 'add.dart';
import 'home.dart';
import 'home.dart';

var controllerTask = Get.put(ControllerTask());
TextEditingController item = TextEditingController();

class AddTast extends StatelessWidget {
  const AddTast({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              TextFormField(
                controller: item,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your Task and press "Enter"',
                ),
                onFieldSubmitted: ((value) {
                  controllerTask.addTodo(value);
                  print(value);
                  Get.to(HomePage());
                  item.clear();
                }),
                onTap: () {},
              ),
              Container(
                height: 400,
                child: FloatingActionButton(
                  onPressed: () {
                    // controllerTask.addTodo(value);
                    Get.to(() => HomePage());
                    print(item.text); //
                    print(controllerTask.tasks.toList());
                    item.clear();
                  },
                  child: Icon(Icons.baby_changing_station),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
