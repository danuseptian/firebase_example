import 'package:firebase_full_example_danu/service/firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/add_user_controller.dart';

class AddUserView extends StatelessWidget {
  const AddUserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AddUserController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Add Product'),
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
                label: Text('Name'),
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
                label: Text('Age'),
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
                FirestoreService().addUser(
                    controller.nameC.text, int.parse(controller.ageC.text));
                Get.back();
              },
              child: Text('Add'),
            )
          ],
        )),
      ),
    );
  }
}
