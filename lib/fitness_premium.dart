import 'package:flutter/material.dart';

class FitnessPremiumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Center(
          child: Text('Fitness Premium Screen !'),
        ),
      ),
    );
  }
}
