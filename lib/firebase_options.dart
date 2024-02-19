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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBzNFl5jkax0HQhgLz1ZvmXbWcdM1V3Too',
    appId: '1:561045219101:web:bdd096423384d1e7e6e3f4',
    messagingSenderId: '561045219101',
    projectId: 'ecommerce-app-29e46',
    authDomain: 'ecommerce-app-29e46.firebaseapp.com',
    storageBucket: 'ecommerce-app-29e46.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyASHjoKwxcQtIeX9FJpNZP0oAaDAyZzUSo',
    appId: '1:561045219101:android:8d7b65fb77f831b7e6e3f4',
    messagingSenderId: '561045219101',
    projectId: 'ecommerce-app-29e46',
    storageBucket: 'ecommerce-app-29e46.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAfYZ-R7NJEUClfOJk1W1vfjorqvBYVEdc',
    appId: '1:561045219101:ios:cf422c0fd8f014dae6e3f4',
    messagingSenderId: '561045219101',
    projectId: 'ecommerce-app-29e46',
    storageBucket: 'ecommerce-app-29e46.appspot.com',
    androidClientId: '561045219101-snrd26sulb285eh3n401gk770aj57lbg.apps.googleusercontent.com',
    iosClientId: '561045219101-ti0ran2mh4jdmkaiq9fr0r2fam1i37kh.apps.googleusercontent.com',
    iosBundleId: 'com.example.tStore',
  );
}
