import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../service/auth.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: ListView(
          padding: EdgeInsets.all(16),
          children: [
            SizedBox(height: 20),
            Text(
              'Login',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 50),
            Lottie.asset('asset/lottie/login.json', height: 200),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                AuthService().signInWithGoogle();
              },
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  child: Row(
                    children: [
                      Image.asset(
                        'asset/icon/google.png',
                        height: 20,
                      ),
                      SizedBox(width: 20),
                      Text(
                        'Google Sign In',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                AuthService().signInAnonymously();
              },
              child: Card(
                color: Colors.grey[800],
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.white70,
                      ),
                      SizedBox(width: 20),
                      Text(
                        'Sign Anonymously',
                        style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
