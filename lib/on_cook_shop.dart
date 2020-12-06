import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Cooktap extends StatelessWidget {

  final int index ;

  Cooktap(this.index);

  final List<String> name = [
    'Poduct Name',
    'Poduct Name',
    'Poduct Name',
    'Poduct Name',
    'Poduct Name',
    'Poduct Name',
    'Primus Juicer 800 W SS',
    'Smart Kook Induction CookTop PC23',
    'MasterBlend SB14',
  ] ;

  final List<String> image = [
    'images/image0.jpeg',
    'images/image1.jpeg',
    'images/image2.jpeg',
    'images/image3.jpeg',
    'images/image4.jpeg',
    'images/image5.jpeg',
    'images/image6.jpeg',
    'images/image8.jpeg',
    'images/image9.jpeg',
  ] ;

  final List<String> price = [
    'Price',
    'Price',
    'Price',
    'Price',
    'Price',
    'Price',
    '5,795',
    '3,540',
    '2,690',
  ] ;

  final List<String> description = [
    '6 full plate\n6 quater plate\n1 rice plate\n2 serving bowl\n6 vegetable bowl\n6 soup bowl',
    '6 full plate\n6 quater plate\n1 rice plate\n2 serving bowl\n6 vegetable bowl\n6 soup bowl',
    '6 full plate\n6 quater plate\n1 rice plate\n2 serving bowl\n6 vegetable bowl\n6 soup bowl',
    '6 full plate\n6 quater plate\n1 rice plate\n2 serving bowl\n6 vegetable bowl\n6 soup bowl',
    '6 full plate\n6 quater plate\n1 rice plate\n2 serving bowl\n6 vegetable bowl\n6 soup bowl',
    '6 full plate\n6 quater plate\n1 rice plate\n2 serving bowl\n6 vegetable bowl\n6 soup bowl',
    'POWER- 800 W\nMOTOR- 100% Copper\nVOLTAGE- 230 V AC / 50 Hz\nNET WEIGHT- 3.6 Kg\n2 YEAR WARRANTY',
    'POWER- 1800 W\nVOLTAGE- 230 V AC / 50 Hz\nNET WEIGHT- 2.1 Kg\nDIMENSIONS- 355 x 270 x 65 mm\nGLASS SIZE- 261 x 261 mm\n1 YEAR WARRANTY',
    'POWER- 600 W\nMOTOR- DC Motor\nVOLTAGE- 230 V AC / 50 Hz\nNET WEIGHT- 0.84 Kg\n2 YEAR WARRANTY',
  ] ;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(name[index],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  height: 350,
                  width: 350,
                  color: Colors.purple[50],
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).primaryColor,
                        width: 2,
                      ),
                    ),
                    child: Image.asset(image[index],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Text('MRP: ₹${price[index]}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    RaisedButton(
                      onPressed: () {
                        Fluttertoast.showToast(
                          msg: 'Added',
                          fontSize: 15,
                          backgroundColor: Colors.grey[200],
                          gravity: ToastGravity.BOTTOM,
                          textColor: Theme.of(context).primaryColor,
                        );
                      },
                      color: Theme.of(context).primaryColor,
                      child: Text('Add to Cart',style: TextStyle(
                        color: Theme.of(context).backgroundColor,
                      ),),
                    ),
                    RaisedButton(
                      onPressed: () {},
                      color: Theme.of(context).primaryColor,
                      child: Text('Buy Now',style: TextStyle(
                        color: Theme.of(context).backgroundColor,
                      ),),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 35,
                width: double.infinity,
                color: Colors.purple[300],
                child: Center(
                  child: Text('Description',style: TextStyle(
                    color: Theme.of(context).backgroundColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text('${description[index]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
