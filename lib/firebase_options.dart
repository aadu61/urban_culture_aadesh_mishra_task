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
    apiKey: 'AIzaSyDCI2an8y3FoGFnvVtcxCXwB2dwMXXQAu8',
    appId: '1:284141308076:web:fce551b4be92de5baf3709',
    messagingSenderId: '284141308076',
    projectId: 'aadesh-task',
    authDomain: 'aadesh-task.firebaseapp.com',
    storageBucket: 'aadesh-task.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDHYCrbeAtlKC8w5HlpdOZctXaZFjBUiXg',
    appId: '1:284141308076:android:84a664e4f8548b3eaf3709',
    messagingSenderId: '284141308076',
    projectId: 'aadesh-task',
    storageBucket: 'aadesh-task.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCr09OxercttehVUTqQaRyZN8PfW6PE9MY',
    appId: '1:284141308076:ios:9b9ff19251b91de8af3709',
    messagingSenderId: '284141308076',
    projectId: 'aadesh-task',
    storageBucket: 'aadesh-task.appspot.com',
    iosBundleId: 'com.example.urbanCultureAadeshMishraTask',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCr09OxercttehVUTqQaRyZN8PfW6PE9MY',
    appId: '1:284141308076:ios:bab79f6ce79cbacaaf3709',
    messagingSenderId: '284141308076',
    projectId: 'aadesh-task',
    storageBucket: 'aadesh-task.appspot.com',
    iosBundleId: 'com.example.urbanCultureAadeshMishraTask.RunnerTests',
  );
}
