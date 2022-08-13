import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CounterController extends GetxController {
  int count = 0.obs();
  incrementCounter() async {
    count++;
    update();
  }

  decrementCounter() {
    count--;
    update();
  }
}
