import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_full_example_danu/service/firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/edit_user_controller.dart';

class EditUserView extends StatelessWidget {
  final QueryDocumentSnapshot<Object?>? value;
  const EditUserView({
    Key? key,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(EditUserController());
    // Input the value to the textfield in Edit Product View
    controller.nameC.text = "${value!['name']}";
    controller.ageC.text = "${value!['age']}";
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Product'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Center(
            child: Column(
          children: [
            TextField(
              textInputAction: TextInputAction.next,
              controller: controller.nameC,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.number,
              controller: controller.ageC,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                FirestoreService().updateUser(
                    controller.nameC.text, controller.ageC.text, value!.id);
                Get.back();
              },
              child: Text('Edit'),
            ),
          ],
        )),
      ),
    );
  }
}
