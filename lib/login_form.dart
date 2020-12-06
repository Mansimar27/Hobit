import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:social_media_buttons/social_media_buttons.dart';
import 'otp.dart';

class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  Future<bool> popup() async{
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.purple[50],
            title: Text('Exit Hobit ?'),
            actions: [
              RaisedButton(
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: Text('Cancel',style: TextStyle(
                  color: Theme.of(context).backgroundColor,
                  fontSize: 20,
                ),),
              ),
              RaisedButton(
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: Text('Exit',style: TextStyle(
                  color: Theme.of(context).backgroundColor,
                  fontSize: 20,
                ),),
              ),
            ],
          );
        } ?? false
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: popup,
      child: SafeArea(
        child: Scaffold(

          backgroundColor: Theme.of(context).backgroundColor,

          body: LoginForm(),

        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  final controler = TextEditingController() ;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('images/illustration1.png',width: double.infinity,)
          ],
        ),
        SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.max,
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
                  height: 25,
                ),
                Stack(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 22,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 25,
                            ),
                            Text('Welcome Back,',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                            ),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 25,
                            ),
                            Text('User',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('images/bubbles1.png',
                          height: 100,
                          width: 100,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 33,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextFormField(
                    controller: controler,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    maxLength: 10,
                    cursorColor: Theme.of(context).primaryColor,
                    decoration: InputDecoration(
                      labelText: 'Enter Your Phone No.',
                      suffixIcon: Icon(
                        Icons.smartphone,
                        color: Theme.of(context).primaryColor,
                        size: 25,
                      ),
                    ),
                    validator: (no) {
                      if (no.isEmpty) {
                        return 'Please enter your Phone No.';
                      }
                      else if (no.length < 10) {
                        return 'Invalid Phone No.';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Text('Or Login With',style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                        ),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        SocialMediaButton.facebook(
                          url: null,
                          color: Colors.blue[900],
                          size: 30,
                        ),
                        SocialMediaButton.google(
                          url: null,
                          color: Colors.red[700],
                          size: 30,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 44,
                ),
              ],
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    if (_formKey.currentState.validate()) {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Otp();
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
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ],
    );
  }
}
