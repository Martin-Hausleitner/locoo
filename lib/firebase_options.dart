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
    apiKey: 'AIzaSyBDInPzdEErQ57PrWe8_alNSJXhRwaXqTw',
    appId: '1:394247920474:web:8eef694b1c83361e453163',
    messagingSenderId: '394247920474',
    projectId: 'locoo-fa1d1',
    authDomain: 'locoo-fa1d1.firebaseapp.com',
    storageBucket: 'locoo-fa1d1.appspot.com',
    measurementId: 'G-5F1D7RDCTW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCDK9CLIYt5arkwcX0wb8BKRRFkf-1aIPI',
    appId: '1:394247920474:android:ea629ce2d30187ad453163',
    messagingSenderId: '394247920474',
    projectId: 'locoo-fa1d1',
    storageBucket: 'locoo-fa1d1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDFrXxiaPM0g-j6gw89aQPSqFN38BE60QY',
    appId: '1:394247920474:ios:81eaa364bde4d029453163',
    messagingSenderId: '394247920474',
    projectId: 'locoo-fa1d1',
    storageBucket: 'locoo-fa1d1.appspot.com',
    iosClientId: '394247920474-iu1lqdcmmh1pelt2ackqg76joi5cu43e.apps.googleusercontent.com',
    iosBundleId: 'at.locoo.locoo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDFrXxiaPM0g-j6gw89aQPSqFN38BE60QY',
    appId: '1:394247920474:ios:81eaa364bde4d029453163',
    messagingSenderId: '394247920474',
    projectId: 'locoo-fa1d1',
    storageBucket: 'locoo-fa1d1.appspot.com',
    iosClientId: '394247920474-iu1lqdcmmh1pelt2ackqg76joi5cu43e.apps.googleusercontent.com',
    iosBundleId: 'at.locoo.locoo',
  );
}
