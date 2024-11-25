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
    apiKey: 'AIzaSyDGrSNUjCTyr0nsiudhew8GmW8Yuf2COIw',
    appId: '1:12020214764:web:b7e9bccb06f5544bca2ec9',
    messagingSenderId: '12020214764',
    projectId: 'yanwu001635092',
    authDomain: 'yanwu001635092.firebaseapp.com',
    storageBucket: 'yanwu001635092.firebasestorage.app',
    measurementId: 'G-R1KFFMLJ2R',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD6eWqu3Gi5R2Anexk_isatZsa2vbdoL2U',
    appId: '1:12020214764:android:b32005fd5422e322ca2ec9',
    messagingSenderId: '12020214764',
    projectId: 'yanwu001635092',
    storageBucket: 'yanwu001635092.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC68Sn8kmi1HDBeUhQbUnWxY4z3v7Hwsag',
    appId: '1:12020214764:ios:48a9cbdc8139c2fdca2ec9',
    messagingSenderId: '12020214764',
    projectId: 'yanwu001635092',
    storageBucket: 'yanwu001635092.firebasestorage.app',
    androidClientId: '12020214764-110bbd8u9i6r1hu9bc5er19lotrov4c3.apps.googleusercontent.com',
    iosClientId: '12020214764-jagsq9c5ag20jqvgl4j6q8gt0bi4aq76.apps.googleusercontent.com',
    iosBundleId: 'com.example.inclass6',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC68Sn8kmi1HDBeUhQbUnWxY4z3v7Hwsag',
    appId: '1:12020214764:ios:48a9cbdc8139c2fdca2ec9',
    messagingSenderId: '12020214764',
    projectId: 'yanwu001635092',
    storageBucket: 'yanwu001635092.firebasestorage.app',
    androidClientId: '12020214764-110bbd8u9i6r1hu9bc5er19lotrov4c3.apps.googleusercontent.com',
    iosClientId: '12020214764-jagsq9c5ag20jqvgl4j6q8gt0bi4aq76.apps.googleusercontent.com',
    iosBundleId: 'com.example.inclass6',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDGrSNUjCTyr0nsiudhew8GmW8Yuf2COIw',
    appId: '1:12020214764:web:3f5f5da7f1a3fe21ca2ec9',
    messagingSenderId: '12020214764',
    projectId: 'yanwu001635092',
    authDomain: 'yanwu001635092.firebaseapp.com',
    storageBucket: 'yanwu001635092.firebasestorage.app',
    measurementId: 'G-EM7PX15KHY',
  );
}