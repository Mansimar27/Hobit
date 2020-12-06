import 'package:flutter/material.dart';

class DancingPremiumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Center(
          child: Text('Dancing Premium Screen !'),
        ),
      ),
    );
  }
}
