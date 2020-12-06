import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FitnessScreen extends StatelessWidget {
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
                    msg: 'Yoga',
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
                    child: Text('Yoga',
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
                    msg: 'Free Weight Training',
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
                    child: Text('Free Weight Training',
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
                    msg: 'Aerobic/Zumba',
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
                    child: Text('Aerobic/Zumba',
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
                    msg: 'Calisthenics',
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
                    child: Text('Calisthenics',
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
                    msg: 'Pregnant Women Fitness',
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
                    child: Text('Pregnant Women Fitness',
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
