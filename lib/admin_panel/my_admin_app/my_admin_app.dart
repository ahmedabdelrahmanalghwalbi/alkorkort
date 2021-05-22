import 'package:flutter/material.dart';

class MyAdminApp extends StatefulWidget {
  @override
  _MyAdminAppState createState() => _MyAdminAppState();
}

class _MyAdminAppState extends State<MyAdminApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("my admin app"),
      ),
    );
  }
}
