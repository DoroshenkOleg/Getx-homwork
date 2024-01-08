import 'package:get/get.dart';

class SecondController extends GetxController {
  final RxBool isZminna = true.obs;

  void changeColor() {
    isZminna.value = !isZminna.value;

  }

}
