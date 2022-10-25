import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_full_example_danu/add_user/view/add_user_view.dart';
import 'package:firebase_full_example_danu/edit_user/view/edit_user_view.dart';
import 'package:firebase_full_example_danu/home/controller/home_controller.dart';
import 'package:firebase_full_example_danu/service/auth.dart';
import 'package:firebase_full_example_danu/service/firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(() => AddUserView());
          },
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          actions: [
            GestureDetector(
              onTap: () {
                AuthService().logout();
              },
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(Icons.logout)),
            ),
          ],
          title: Text('Home View'),
        ),
        body: StreamBuilder<QuerySnapshot>(
          stream: controller.initStream,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.active) {
              return ListView(
                children: [
                  //
                  if (snapshot.data!.docs.length == 0)
                    Column(
                      children: [
                        SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {},
                          child: Card(
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 20),
                              child: Text(
                                'No data yet, please input your data.',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  //
                  Column(
                    children:
                        List.generate(snapshot.data!.docs.length, (index) {
                      var item = snapshot.data!.docs[index];
                      return GestureDetector(
                        onTap: () {
                          Get.to(() => EditUserView(value: item));
                        },
                        child: Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 20),
                            child: Row(
                              children: [
                                Icon(Icons.person),
                                SizedBox(width: 20),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${item['name']}',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey[600],
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '${item['age']}',
                                      style: TextStyle(
                                        color: Colors.grey[600],
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    FirestoreService().deleteUser(item.id);
                                  },
                                  child: Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ],
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return Container();
            }
            return Center(
              child: Text('No Data Avaialable'),
            );
          },
        ));
  }
}
