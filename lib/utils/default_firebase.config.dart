import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  // static const FirebaseOptions web = FirebaseOptions(
  //   apiKey: "AIzaSyD7FzcGdSGbdrp-I8vvrFe0r-eGy-NiZ6Q",
  //   authDomain: "eco-nepal.firebaseapp.com",
  //   projectId: "eco-nepal",
  //   storageBucket: "eco-nepal.appspot.com",
  //   messagingSenderId: "38478918538",
  //   appId: "1:38478918538:web:63e349c8ad477591f44e73",
  //   measurementId: "G-CTJMZ3ZZ8R",
  // );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: "AIzaSyAQLQpaxrpPfR0NDFpodS48yvZXzXFzWno",
    authDomain: "blog-app-flutter-ronish.firebaseapp.com",
    projectId: "blog-app-flutter-ronish",
    storageBucket: "blog-app-flutter-ronish.appspot.com",
    messagingSenderId: "130592672691",
    appId: "1:130592672691:web:dbcfdaa8266e1fb53459c6",
    // measurementId: "G-CTJMZ3ZZ8R",
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: "AIzaSyAQLQpaxrpPfR0NDFpodS48yvZXzXFzWno",
    authDomain: "blog-app-flutter-ronish.firebaseapp.com",
    projectId: "blog-app-flutter-ronish",
    storageBucket: "blog-app-flutter-ronish.appspot.com",
    messagingSenderId: "130592672691",
    appId: "1:130592672691:web:dbcfdaa8266e1fb53459c6",
    // measurementId: "G-CTJMZ3ZZ8R",
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: "AIzaSyAQLQpaxrpPfR0NDFpodS48yvZXzXFzWno",
    authDomain: "blog-app-flutter-ronish.firebaseapp.com",
    projectId: "blog-app-flutter-ronish",
    storageBucket: "blog-app-flutter-ronish.appspot.com",
    messagingSenderId: "130592672691",
    appId: "1:130592672691:web:dbcfdaa8266e1fb53459c6",
    // measurementId: "G-CTJMZ3ZZ8R",
  );
}
