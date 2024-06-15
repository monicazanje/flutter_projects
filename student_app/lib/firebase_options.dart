// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyAUbW5Qs8V_lqVvUPUWt69c42X0uYVV3Zw',
    appId: '1:206684382263:web:8ca4c52b5bdeab3c34cbb2',
    messagingSenderId: '206684382263',
    projectId: 'student-announcement-d5e5d',
    authDomain: 'student-announcement-d5e5d.firebaseapp.com',
    storageBucket: 'student-announcement-d5e5d.appspot.com',
    measurementId: 'G-CP7BXGFJ1N',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD6i8HxxqKCDwVW23hPGUPpzb0RF6_-MF4',
    appId: '1:206684382263:android:610d7eb8c2b95c3334cbb2',
    messagingSenderId: '206684382263',
    projectId: 'student-announcement-d5e5d',
    storageBucket: 'student-announcement-d5e5d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCz8XkmWSeNh96Xzvb63KqXO4SrbM5nwWM',
    appId: '1:206684382263:ios:3a2a33e36b8ef70334cbb2',
    messagingSenderId: '206684382263',
    projectId: 'student-announcement-d5e5d',
    storageBucket: 'student-announcement-d5e5d.appspot.com',
    iosBundleId: 'com.example.studentApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCz8XkmWSeNh96Xzvb63KqXO4SrbM5nwWM',
    appId: '1:206684382263:ios:3a2a33e36b8ef70334cbb2',
    messagingSenderId: '206684382263',
    projectId: 'student-announcement-d5e5d',
    storageBucket: 'student-announcement-d5e5d.appspot.com',
    iosBundleId: 'com.example.studentApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAUbW5Qs8V_lqVvUPUWt69c42X0uYVV3Zw',
    appId: '1:206684382263:web:28aa8fef58dda03234cbb2',
    messagingSenderId: '206684382263',
    projectId: 'student-announcement-d5e5d',
    authDomain: 'student-announcement-d5e5d.firebaseapp.com',
    storageBucket: 'student-announcement-d5e5d.appspot.com',
    measurementId: 'G-27VLY7TMTV',
  );
}