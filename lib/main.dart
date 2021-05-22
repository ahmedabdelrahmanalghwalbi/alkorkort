import 'package:flutter/material.dart';
import 'package:korkort11/quiz/views/home.dart';
import 'package:korkort11/size_config.dart';
import 'package:korkort11/view/welcome_screen.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'admin_panel/my_admin_app/my_admin_app.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home:kIsWeb?MyAdminApp() :MyApp(),
    title: "AlKorKort",
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          print(snapshot.error);
          return Scaffold(
            appBar: AppBar(
              title: Text("error"),
            ),
            body: Center(
              child: Text("${snapshot.error}"),
            ),
          );
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return SplashScreen(
            photoSize: MediaQuery.of(context).size.height/4,
            seconds: 3,
            navigateAfterSeconds:AfterSplash(),
            imageBackground: AssetImage(
              'assets/1.png',
            ),
            loaderColor: Colors.indigo[500],
          );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return Scaffold(body: Center(
          child: CircularProgressIndicator(),
        ),);
      },
    );
  }
}
/*
* SplashScreen(
      photoSize: MediaQuery.of(context).size.height/4,
      seconds: 3,
      navigateAfterSeconds:AfterSplash(),
      imageBackground: AssetImage(
        'assets/1.png',
      ),
      loaderColor: Colors.indigo[500],
    );*/

class AfterSplash extends StatefulWidget {
  @override
  _AfterSplashState createState() => _AfterSplashState();
}

class _AfterSplashState extends State<AfterSplash> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
  return WelcomeScreen();
//      if(Platform.isIOS){
//        return WelcomeScreen();
//      }else if(Platform.isAndroid){
//        return WelcomeScreen();
//      }else if(kIsWeb){
//        return WelcomeScreen();
//      }
}
}
