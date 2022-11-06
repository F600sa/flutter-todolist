import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

import '../V/Screen/home.dart';


class ControllerTask extends GetxController {
  var tasks = [];

  void addTask(item) {
    tasks.add(item.toString());
  }
}
