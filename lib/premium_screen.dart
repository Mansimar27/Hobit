import 'package:flutter/material.dart';
import 'fitness_premium.dart';
import 'dancing_premium.dart';
import 'cooking_premium.dart';

class PremiumScreen extends StatefulWidget {

  @override
  _PremiumScreenState createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Theme.of(context).backgroundColor,
          appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            leading: Container(),
            flexibleSpace: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TabBar(
                  tabs: [
                    Tab(
                      text: 'Fitness',
                    ),
                    Tab(
                      text: 'Dancing',
                    ),
                    Tab(
                      text: 'Cooking',
                    ),
                  ],
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              FitnessPremiumScreen(),
              DancingPremiumScreen(),
              CookingPremiumScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
