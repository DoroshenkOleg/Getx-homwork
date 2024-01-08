import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_homwork/binding_room/second_binding.dart';
import 'package:getx_homwork/controller/home_controller.dart';
import 'package:getx_homwork/page/second_screen.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        title: Text(
            'txt_First_Page'.tr,
          style: const TextStyle(
            color: Colors.white,
            letterSpacing: 3
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          ElevatedButton(
            onPressed: () {
              controller.changeText();
              controller.changeTheme();
              },
            child: Center(
                child: Obx(() =>
                    Text(
                  controller.text.value
                    ),
                ),
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton(
              onPressed: () => Get.to( const SecondScreen(), binding: SecondBinding()),
              child: Text('txt_On_Next_Page'.tr)
          )
        ],
      ),
    );
  }
}
