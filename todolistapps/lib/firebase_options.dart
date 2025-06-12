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
    apiKey: 'AIzaSyDL4t9keEXWmC0c3ZpJWSUFoO6K1miD-DY',
    appId: '1:362812727506:web:4bf9fc11553d8bd9820d0b',
    messagingSenderId: '362812727506',
    projectId: 'todolistapps-2b371',
    authDomain: 'todolistapps-2b371.firebaseapp.com',
    storageBucket: 'todolistapps-2b371.firebasestorage.app',
    measurementId: 'G-9CWGWMGJ60',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA43INHMypq4RWXqhvrrou5lDHbxp9mi0M',
    appId: '1:362812727506:android:207cdb7207091841820d0b',
    messagingSenderId: '362812727506',
    projectId: 'todolistapps-2b371',
    storageBucket: 'todolistapps-2b371.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCW73uFSpoKSvTWIs1lBYhBpg6RyXGZAbc',
    appId: '1:362812727506:ios:6c24d16eb8e725b1820d0b',
    messagingSenderId: '362812727506',
    projectId: 'todolistapps-2b371',
    storageBucket: 'todolistapps-2b371.firebasestorage.app',
    iosBundleId: 'com.example.todolistapps',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCW73uFSpoKSvTWIs1lBYhBpg6RyXGZAbc',
    appId: '1:362812727506:ios:6c24d16eb8e725b1820d0b',
    messagingSenderId: '362812727506',
    projectId: 'todolistapps-2b371',
    storageBucket: 'todolistapps-2b371.firebasestorage.app',
    iosBundleId: 'com.example.todolistapps',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDL4t9keEXWmC0c3ZpJWSUFoO6K1miD-DY',
    appId: '1:362812727506:web:b259b6dc3c2f4f85820d0b',
    messagingSenderId: '362812727506',
    projectId: 'todolistapps-2b371',
    authDomain: 'todolistapps-2b371.firebaseapp.com',
    storageBucket: 'todolistapps-2b371.firebasestorage.app',
    measurementId: 'G-FHQVD5FSMJ',
  );
}
