import 'package:flutter/material.dart';
import 'on_cook_shop.dart';

class CookingShop extends StatefulWidget {

  @override
  _CookingShopState createState() => _CookingShopState();
}

class _CookingShopState extends State<CookingShop> {
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text('Cooking Shop',style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 25,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),),
            ),
            SizedBox(
              height: 15,
            ),
            Divider(),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Cooktap(0);
                    }
                ),);
              },
              title: Text('Product Name'),
              leading: Image.asset(image[0],
                height: 80,
                width: 80,
              ),
              trailing: Text('₹Price'),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Cooktap(1);
                    }
                ),);
              },
              title: Text('Product Name'),
              leading: Image.asset(image[1],
                height: 80,
                width: 80,
              ),
              trailing: Text('₹Price'),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Cooktap(2);
                    }
                ),);
              },
              title: Text('Product Name'),
              leading: Image.asset(image[2],
                height: 80,
                width: 80,
              ),
              trailing: Text('₹Price'),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Cooktap(3);
                    }
                ),);
              },
              title: Text('Product Name'),
              leading: Image.asset(image[3],
                height: 80,
                width: 80,
              ),
              trailing: Text('₹Price'),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Cooktap(4);
                    }
                ),);
              },
              title: Text('Product Name'),
              leading: Image.asset(image[4],
                height: 80,
                width: 80,
              ),
              trailing: Text('₹Price'),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Cooktap(5);
                    }
                ),);
              },
              title: Text('Product Name'),
              leading: Image.asset(image[5],
                height: 80,
                width: 80,
              ),
              trailing: Text('₹Price'),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Cooktap(6);
                    }
                ),);
              },
              title: Text('Primus Juicer 800 W SS'),
              leading: Image.asset(image[6],
                height: 80,
                width: 80,
              ),
              trailing: Text('₹5,795'),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Cooktap(7);
                    }
                ),);
              },
              title: Text('Smart Kook Induction CookTop PC23'),
              leading: Image.asset(image[7],
                height: 80,
                width: 80,
              ),
              trailing: Text('₹3,540'),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Cooktap(8);
                    }
                ),);
              },
              title: Text('MasterBlend SB14'),
              leading: Image.asset(image[8],
                height: 80,
                width: 80,
              ),
              trailing: Text('₹2,690'),
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
