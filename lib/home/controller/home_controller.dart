import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../../service/firestore.dart';

class HomeController extends GetxController {
  Stream<QuerySnapshot>? initStream;
  @override
  void onInit() {
    initStream = FirestoreService().usersStream;
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
