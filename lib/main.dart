import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'login_form.dart';

void main() {
  runApp(Hobit());
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
    ],
  );
}

class Hobit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        backgroundColor: Colors.white,
        accentColor: Colors.purpleAccent,
      ),
      title: 'Hobit',
      home: Login(),
    );
  }
}
