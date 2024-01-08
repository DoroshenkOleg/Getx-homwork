import 'package:get/get.dart';
import 'package:getx_homwork/controller/second_controller.dart';

class SecondBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SecondController());
  }

}