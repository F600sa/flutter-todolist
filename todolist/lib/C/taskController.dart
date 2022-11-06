import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class ControllerTask extends GetxController {
  var tasks = [].obs;

  void addTask(item) {
    tasks.add(item);
  }
}
