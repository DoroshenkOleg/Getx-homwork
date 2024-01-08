import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_homwork/controller/second_controller.dart';

class SecondScreen extends GetView<SecondController> {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
            'txt_Second_Page'.tr,
          style: const TextStyle(
            color: Colors.white,
            letterSpacing: 3,
          ),
        ),
      ),
      body: Column(
          children: [
            const SizedBox(height: 230),

               ElevatedButton(
                onPressed: () {
                  controller.changeColor();
                },
                child:  Obx(() =>
                   Container(
                    color: controller.isZminna.value ? Colors.red : Colors.blue,
                    height: 200,
                    width: Get.width,
                  ),
                ),
              ),

            const SizedBox(height: 20),
             Text(
              'txt_Choose_The_Color'.tr,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        )
    );
  }
}
