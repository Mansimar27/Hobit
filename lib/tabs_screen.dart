import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'premium_screen.dart';
import 'shop_screen.dart';
import 'article_screen.dart';
import 'more_screen.dart';

class TabsScreen extends StatefulWidget {

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {

  Future<bool> popup() async{
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.purple[50],
            title: Text('Confirm Go Back ?'),
            actions: [
              RaisedButton(
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Cancel',style: TextStyle(
                  color: Theme.of(context).backgroundColor,
                  fontSize: 20,
                ),),
              ),
              RaisedButton(
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                },
                child: Text('Confirm',style: TextStyle(
                  color: Theme.of(context).backgroundColor,
                  fontSize: 20,
                ),),
              ),
            ],
          );
        } ?? false
    );
  }

  final List<Widget> pages = [
    HomeScreen(),
    PremiumScreen(),
    ShopScreen(),
    ArticleScreen(),
    MoreScreen(),
  ];

  int pageindex = 0 ;

  void showpage(int index) {
    setState(() {
      pageindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: popup,
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: true,
            selectedItemColor: Theme.of(context).primaryColor,
            unselectedItemColor: Colors.black,
            backgroundColor: Theme.of(context).backgroundColor,
            items: [
              BottomNavigationBarItem(
                title: Text('Home'),
                icon: Icon(Icons.home,
                  color: Colors.black,),
              ),
              BottomNavigationBarItem(
                title: Text('Premium'),
                icon: Icon(Icons.stars,
                  color: Colors.black,),
              ),
              BottomNavigationBarItem(
                title: Text('Shop'),
                icon: Icon(Icons.shopping_cart,
                  color: Colors.black,),
              ),
              BottomNavigationBarItem(
                title: Text('Articles'),
                icon: Icon(Icons.insert_chart,
                  color: Colors.black,),
              ),
              BottomNavigationBarItem(
                title: Text('Profile'),
                icon: Icon(Icons.account_circle,
                  color: Colors.black,),
              ),
            ],
            iconSize: 25,
            currentIndex: pageindex,
            onTap: showpage,
          ),
          backgroundColor: Theme.of(context).backgroundColor,
          body: pages[pageindex],
        ),
      ),
    );
  }
}
