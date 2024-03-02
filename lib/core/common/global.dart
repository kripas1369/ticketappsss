import 'package:flutter/material.dart';
import 'package:get/get.dart';


void showLoading([String? message]) {
  Get.dialog(
      const Center(
        child: CircularProgressIndicator(
          color: Colors.blue,
        ),
      ),
      barrierDismissible: false);
}

//hide loading
void hideLoading() {
  if (Get.isDialogOpen!) Get.back();
}
void showSnackBar(String message, Color color) {
  Get.snackbar(
    message,
    "",
    backgroundColor: color,
    colorText: Colors.white,
    snackPosition: SnackPosition.TOP,
  );
}