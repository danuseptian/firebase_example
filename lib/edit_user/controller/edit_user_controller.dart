import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EditUserController extends GetxController {
  late TextEditingController nameC;
  late TextEditingController ageC;

  @override
  void onInit() {
    nameC = TextEditingController();
    ageC = TextEditingController();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    nameC.dispose();
    ageC.dispose();
  }
}
