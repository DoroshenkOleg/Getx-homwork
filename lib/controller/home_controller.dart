import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  final RxBool isDarkTheme = true.obs;
  final RxString text = 'Кнопка не нажата'.obs;

  void changeTheme() {
    isDarkTheme.value = !isDarkTheme.value;
    Get.changeTheme(isDarkTheme.value ? ThemeData.dark() : ThemeData.light());
  }

  void changeText() {
    text.value = 'Кнопка нажата';
  }
}