import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'dart:io';

class Profile extends StatefulWidget {

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera,
      maxHeight: 300,
      maxWidth: 300,
    );

    setState(() {
      _image = File(pickedFile.path);
      color = Colors.transparent;
    });
  }

  static DateTime dated = DateTime.now() ;
  String dates = 'Not Selected';

  final namecontrol = TextEditingController();

  String name = 'Not Selected' ;

  String gender = 'Not Selected' ;

  Color color = Colors.grey;

  Future<void> namepop() async {
    showDialog(context: context,
      builder: (_) {
      return AlertDialog(
        backgroundColor: Colors.purple[50],
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
              setState(() {
                name = namecontrol.text;
              });
              Navigator.of(context).pop();
            },
            child: Text('Submit',style: TextStyle(
              color: Theme.of(context).backgroundColor,
              fontSize: 20,
            ),),
          ),
        ],
        content: TextFormField(
          maxLength: 20,
          controller: namecontrol,
          textAlign: TextAlign.center,
          cursorColor: Theme.of(context).primaryColor,
          decoration: InputDecoration(
            alignLabelWithHint: true,
            hintText: 'Enter Name',
          ),
        ),
      );
      }
    );
  }

  Future<void> genderpop() async {
    showDialog(context: context,
        builder: (_) {
          return AlertDialog(
            title: Text('Gender'),
            backgroundColor: Colors.purple[50],
            actions: [
              RaisedButton(
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  setState(() {
                    gender = 'Male';
                  });
                  Navigator.of(context).pop();
                },
                child: Text('Male',style: TextStyle(
                  color: Theme.of(context).backgroundColor,
                  fontSize: 20,
                ),),
              ),
              RaisedButton(
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  setState(() {
                    gender = 'Female';
                  });
                  Navigator.of(context).pop();
                },
                child: Text('Female',style: TextStyle(
                  color: Theme.of(context).backgroundColor,
                  fontSize: 20,
                ),),
              ),
            ],
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: SingleChildScrollView(
          child: Column(
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
                          Text('Edit Profile', style: TextStyle(
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
                height: 11,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: CircleAvatar(
                        radius: 55,
                        backgroundColor: Colors.grey[200],
                        child: Center(
                          child: Stack(
                            children: [
                              Icon(Icons.account_circle,
                                size: 111,
                                color: color,
                              ),
//                              Column(
//                                children: [
//                                  SizedBox(
//                                    height: 77,
//                                  ),
//                                  Row(
//                                    children: [
//                                      SizedBox(
//                                        width: 80,
//                                      ),
//                                      Icon(Icons.edit),
//                                    ],
//                                  ),
//                                ],
//                              ),
                            ],
                          ),
                        ),
                        backgroundImage: _image == null ?
                        null :
                        FileImage(_image),
                      ),
                      onTap: () {
                        getImage();
                      },
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Text('User Name',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontStyle: FontStyle.italic,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  namepop();
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.purple[50],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: 45,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('  Name : ',style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),),
                      Center(
                        child: Text(name,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  showDatePicker(context: context,
                    initialDate: DateTime(2000),
                    firstDate: DateTime(1985),
                    lastDate: DateTime(2015),).then((value) {
                    setState(() {
                      dated = value;
                      dates = DateFormat.yMd().format(dated);
                    });
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.purple[50],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: 45,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('  D.O.B : ',style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),),
                      Center(
                        child: Text(dates,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  genderpop();
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.purple[50],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: 45,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('  Gender : ',style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),),
                      Center(
                        child: Text('$gender',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 33,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(10),
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
                          children: [
                            Icon(
                              Icons.done,
                              color: Theme.of(context).backgroundColor,
                              size: 20,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Done',style: TextStyle(
                              color: Theme.of(context).backgroundColor,
                              fontSize: 20,
                            ),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
