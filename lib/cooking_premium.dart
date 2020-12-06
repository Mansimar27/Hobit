import 'package:flutter/material.dart';

class CookingPremiumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Center(
          child: Text('Cooking Premium Screen !'),
        ),
      ),
    );
  }
}
