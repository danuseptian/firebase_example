import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  Stream<QuerySnapshot> usersStream = FirebaseFirestore.instance
      .collection('users')
      .orderBy('time', descending: true)
      .snapshots();

  CollectionReference users = FirebaseFirestore.instance.collection('users');

  Future addUser(String name, int age) {
    return users
        .add(
          {
            'name': name,
            'age': age,
            'time': Timestamp.now(),
          },
        )
        .then((value) => print('Users added'))
        .catchError((error) => print('Failed to add user: $error'));
  }

  Future deleteUser(String docId) {
    return users
        .doc(docId)
        .delete()
        .then((value) => print('User deleted'))
        .catchError(
            (error) => print('Failed to delete user\'s property: $error'));
  }

  Future updateUser(String name, String age, String docId) {
    return users
        .doc(docId)
        .update({
          'name': name,
          'age': age,
        })
        .then((value) => print('User Updated'))
        .catchError((error) => print('Failed to update user: $error'));
  }
}
