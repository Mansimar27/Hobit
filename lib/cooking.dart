import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CookingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.purple[50],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Fluttertoast.showToast(
                    msg: 'Bakery Items',
                    fontSize: 15,
                    backgroundColor: Colors.grey[200],
                    gravity: ToastGravity.BOTTOM,
                    textColor: Colors.purple,
                  );
                },
                child: Card(
                  color: Colors.purple,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Bakery Items',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Fluttertoast.showToast(
                    msg: 'Gym Food',
                    fontSize: 15,
                    backgroundColor: Colors.grey[200],
                    gravity: ToastGravity.BOTTOM,
                    textColor: Colors.purple,
                  );
                },
                child: Card(
                  color: Colors.purple,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Gym Food',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Fluttertoast.showToast(
                    msg: 'Drinks & Shakes',
                    fontSize: 15,
                    backgroundColor: Colors.grey[200],
                    gravity: ToastGravity.BOTTOM,
                    textColor: Colors.purple,
                  );
                },
                child: Card(
                  color: Colors.purple,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Drinks & Shakes',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Fluttertoast.showToast(
                    msg: 'Easy Ingredient Food',
                    fontSize: 15,
                    backgroundColor: Colors.grey[200],
                    gravity: ToastGravity.BOTTOM,
                    textColor: Colors.purple,
                  );
                },
                child: Card(
                  color: Colors.purple,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Easy Ingredient Food',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
