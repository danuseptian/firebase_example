// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDIZNzUh5M1RrmWMBVg0uHDhoZfI88OiVY',
    appId: '1:557690936272:web:400f707f161fda74f9b7d5',
    messagingSenderId: '557690936272',
    projectId: 'fir-full-example-3ad09',
    authDomain: 'fir-full-example-3ad09.firebaseapp.com',
    storageBucket: 'fir-full-example-3ad09.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCSNpROsXIn7a1yR3ZkTt2kenNM__YkR7M',
    appId: '1:557690936272:android:c2edf551483c87f5f9b7d5',
    messagingSenderId: '557690936272',
    projectId: 'fir-full-example-3ad09',
    storageBucket: 'fir-full-example-3ad09.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBi-FSLyyhnb3AFZ06MME3fR6QBuSLY1Q8',
    appId: '1:557690936272:ios:1a26c802c9d28b1df9b7d5',
    messagingSenderId: '557690936272',
    projectId: 'fir-full-example-3ad09',
    storageBucket: 'fir-full-example-3ad09.appspot.com',
    iosClientId: '557690936272-d06cnofjpdc0861nk5l92cqal8ub44t7.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseFullExampleDanu',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBi-FSLyyhnb3AFZ06MME3fR6QBuSLY1Q8',
    appId: '1:557690936272:ios:1a26c802c9d28b1df9b7d5',
    messagingSenderId: '557690936272',
    projectId: 'fir-full-example-3ad09',
    storageBucket: 'fir-full-example-3ad09.appspot.com',
    iosClientId: '557690936272-d06cnofjpdc0861nk5l92cqal8ub44t7.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseFullExampleDanu',
  );
}
