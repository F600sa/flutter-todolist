import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

import '../V/Screen/home.dart';

class ControllerTask extends GetxController {
  final tasks = [].obs;

  // void addTask(item) {
  //   tasks.add(item.toString());
  // }
  void addTodo(value) {
    tasks.add(value);
  }

  //  void deletTodo( index){
  //   print("object");
  //   tasks.removeAt(index) ;

  //   }
  void delTask(int index) {
    tasks.removeAt(index);
  }

  //          Future<void> removeTodo(ControllerTask index) async {
  //         await tasks.removeAt(tasks.length);
  //           tasks.remove(index);
  // }
}
