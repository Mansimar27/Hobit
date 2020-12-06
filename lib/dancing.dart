import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DancingScreen extends StatelessWidget {
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
                    msg: 'Bollywood Basics',
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
                    child: Text('Bollywood Basics',
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
                    msg: 'Punjabi Basics',
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
                    child: Text('Punjabi Basics',
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
                    msg: 'Single Song',
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
                    child: Text('Single Song',
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
                    msg: 'Byob',
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
                    child: Text('Byob',
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
