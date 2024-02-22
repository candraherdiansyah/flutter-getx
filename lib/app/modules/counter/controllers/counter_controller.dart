import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  final count = 1.obs;

  void increment() {
    if (count.value >= 100) {
      Get.snackbar(
        "Error",
        "hayoh we dikurangan",
        colorText: Colors.white,
        backgroundColor: Colors.red,
        icon: const Icon(Icons.add_alert),
      );
    } else {
      count.value++;
    }
  }

  void decrement() {
    if (count.value <= 1) {
      Get.snackbar(
        "error",
        "Hayoh we dikurangan",
        colorText: Colors.white,
        backgroundColor: Colors.red,
        icon: const Icon(Icons.add_alert),
      );
    } else {
      count.value--;
    }
  }
}
