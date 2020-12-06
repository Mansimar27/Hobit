import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'tabs_screen.dart';
import 'dart:io';

class ProfileSetup extends StatefulWidget {
  @override
  _ProfileSetupState createState() => _ProfileSetupState();
}

class _ProfileSetupState extends State<ProfileSetup> {

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

  final _formKey = GlobalKey<FormState>();

  final controler = TextEditingController() ;

  Color color = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        backgroundColor: Theme.of(context).backgroundColor,

        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 33,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 33,
                    ),
                    Image.asset('images/logo.png',
                      height: 50,
                      width: 50,
                    ),
                  ],
                ),
                SizedBox(
                  height: 33,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Text('SetUp Your ',style: TextStyle(
                      color: Colors.black,
                      fontSize: 33,
                    ),),
                    Text('Profile',style: TextStyle(
                        color: Colors.black,
                        fontSize: 33,
                        fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: getImage,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(55),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                    child: CircleAvatar(
                      child: Center(
                        child: Icon(
                          Icons.account_circle,
                          size: 111,
                          color: color,
                        ),
                      ),
                      backgroundColor: Colors.grey[100],
                      backgroundImage: _image == null
                          ?
                          null
                          :
                      FileImage(_image),
                      radius: 55,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextFormField(
                    controller: controler,
                    keyboardType: TextInputType.text,
                    textAlign: TextAlign.center,
                    cursorColor: Theme.of(context).primaryColor,
                    decoration: InputDecoration(
                      labelText: 'What should we call you ?',
                    ),
                    validator: (name) {
                      if (name.isEmpty) {
                        return 'Please enter your Name.';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 111,
                ),
                Stack(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 25,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) {
                                    return TabsScreen();
                                  }
                                ),);
                              },
                              child: Text('Skip for now.',style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.5,
                                fontStyle: FontStyle.italic,
                              ),),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (_formKey.currentState.validate()) {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return TabsScreen();
                                  }
                              ),);
                            }
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Icon(CupertinoIcons.forward,
                                color: Theme.of(context).backgroundColor,
                                size: 35,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 22,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
