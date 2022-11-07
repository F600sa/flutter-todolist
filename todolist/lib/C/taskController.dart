import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

import '../V/Screen/home.dart';

class ControllerTask extends GetxController {
  final tasks = [].obs;

  void addTask(value) {
    tasks.add(value);
  }

  deletTask(int index) {
    tasks.removeAt(index);
  }
}
