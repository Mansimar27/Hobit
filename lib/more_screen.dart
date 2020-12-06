import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';
import 'profile.dart';

class MoreScreen extends StatefulWidget {

  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {

  _link() async {
    const url = 'https://www.hobit.in/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch this link.';
    }
  }


  Future<void> popup() async{
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.purple[50],
          title: Text('Rate This App'),
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
                Fluttertoast.showToast(
                  msg: 'Submitted',
                  fontSize: 15,
                  backgroundColor: Colors.grey[200],
                  gravity: ToastGravity.BOTTOM,
                  textColor: Theme.of(context).primaryColor,
                );
              },
              child: Text('Submit',style: TextStyle(
                color: Theme.of(context).backgroundColor,
                fontSize: 20,
              ),),
            ),
          ],
          content: SmoothStarRating(
            color: Theme.of(context).primaryColor,
            size: 35,
            allowHalfRating: true,
            defaultIconData: Icons.star_border,
            filledIconData: Icons.star,
            halfFilledIconData: Icons.star_half,
            rating: 0.0,
            isReadOnly: false,
            starCount: 5,
          ),
        );
      }
    );
  }

  Future<void> logout() async {
    showDialog(context: context,
        builder: (_) {
          return AlertDialog(
            content: Text('Are You Sure to LogOut From HOBIT.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            backgroundColor: Colors.purple[50],
            actions: [
              RaisedButton(
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel',style: TextStyle(
                  color: Theme.of(context).backgroundColor,
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
                child: Text('LogOut',style: TextStyle(
                  color: Theme.of(context).backgroundColor,
                ),),
              ),
            ],
          );
        }
    );
  }

  Color black = Colors.black;

  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        backgroundColor: Colors.grey[200],

        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image.asset('images/header.png',width: double.infinity,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Text('Profile', style: TextStyle(
                          color: Theme.of(context).backgroundColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).backgroundColor,
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Center(
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.grey[100],
                            child: Center(
                              child: Icon(
                                Icons.account_circle,
                                size: 100,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Center(
                          child: Text('User Name',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                            color: black,
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                          ),),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) {
                              return Profile();
                            }
                          ),);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            width: 125,
                            height: 35,
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Center(
                                child: Text('Edit Profile',style: TextStyle(
                                  color: Theme.of(context).backgroundColor,
                                  fontSize: 20,
                                ),),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).backgroundColor,
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            width: double.infinity,
                            color: Theme.of(context).backgroundColor,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.settings,
                                  color: black,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text('Settings',
                                  style: TextStyle(
                                  color: black,
                                  fontSize: 20,
                                ),),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: InkWell(
                          onTap: _link,
                          child: Container(
                            width: double.infinity,
                            color: Theme.of(context).backgroundColor,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.help_outline,
                                  color: black,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text('Help & Support',
                                  style: TextStyle(
                                    color: black,
                                    fontSize: 20,
                                  ),),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: InkWell(
                          onTap: () {
                            Share.share(
                                'Let\'s Make HOBBIES Cooler!\n\nFor More Details GoTo-\nwww.Hobit.com',
                                subject: 'Share HOBIT with your Friends.',
                            );
                          },
                          child: Container(
                            width: double.infinity,
                            color: Theme.of(context).backgroundColor,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.share,
                                  color: black,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text('Refer & Earn',
                                  style: TextStyle(
                                    color: black,
                                    fontSize: 20,
                                  ),),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: InkWell(
                          onTap: popup,
                          child: Container(
                            width: double.infinity,
                            color: Theme.of(context).backgroundColor,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: black,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text('Rate Us',
                                  style: TextStyle(
                                    color: black,
                                    fontSize: 20,
                                  ),),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: logout,
              child: Container(
                width: 135,
                height: 35,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.exit_to_app,
                          color: Theme.of(context).backgroundColor,
                          size: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('LogOut',style: TextStyle(
                          color: Theme.of(context).backgroundColor,
                          fontSize: 20,
                        ),),
                      ],
                    ),
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
