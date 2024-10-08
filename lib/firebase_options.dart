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
    apiKey: 'AIzaSyCByLO_dlxYMNkUO6DKBjplg6ILDO2oJo4',
    appId: '1:635099609571:web:c87c1539daa4de47aac8d6',
    messagingSenderId: '635099609571',
    projectId: 'spotifi-37b80',
    authDomain: 'spotifi-37b80.firebaseapp.com',
    storageBucket: 'spotifi-37b80.appspot.com',
    measurementId: 'G-HQYKMK036S',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDw-xtjYDO5XvY5B7EjQhBN2EVh2FrDKiU',
    appId: '1:635099609571:android:6508c1a3a6ce68f6aac8d6',
    messagingSenderId: '635099609571',
    projectId: 'spotifi-37b80',
    storageBucket: 'spotifi-37b80.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBXzq3Pj8xZZg7jnJA17jmZROOKGnBW__0',
    appId: '1:635099609571:ios:e613191d99608674aac8d6',
    messagingSenderId: '635099609571',
    projectId: 'spotifi-37b80',
    storageBucket: 'spotifi-37b80.appspot.com',
    iosBundleId: 'com.example.spotify',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBXzq3Pj8xZZg7jnJA17jmZROOKGnBW__0',
    appId: '1:635099609571:ios:e613191d99608674aac8d6',
    messagingSenderId: '635099609571',
    projectId: 'spotifi-37b80',
    storageBucket: 'spotifi-37b80.appspot.com',
    iosBundleId: 'com.example.spotify',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCByLO_dlxYMNkUO6DKBjplg6ILDO2oJo4',
    appId: '1:635099609571:web:fef58afaa9ada816aac8d6',
    messagingSenderId: '635099609571',
    projectId: 'spotifi-37b80',
    authDomain: 'spotifi-37b80.firebaseapp.com',
    storageBucket: 'spotifi-37b80.appspot.com',
    measurementId: 'G-MQJL1JL8EQ',
  );
}
