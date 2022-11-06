// import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:todolist/V/Screen/update.dart';

import '../../C/taskController.dart';
import 'add.dart';


var controllerTask  =Get.put(ControllerTask());
// var item =TextEditingController();
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
                        item.text,style: TextStyle(color: Colors.amber),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () {


                      },
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
          SizedBox(
            height: 400,
          ),
           FloatingActionButton(onPressed: (){
            Get.to(()=>AddTast());
        
            
            print('done');
            // controllerTask.addTask(item);
           },child: Icon(Icons.add),)

        ],
        
      ),
    );
  }
}
