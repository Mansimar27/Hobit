import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'profile_setup.dart';

class Otp extends StatefulWidget {

  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {

  final _formKey = GlobalKey<FormState>();

  final controler = TextEditingController() ;

  Future<void> otp() async{
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.purple[50],
            title: Text('OTP'),
            actions: [
              FlatButton(
                color: Colors.transparent,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Enter OTP',style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 20,
                ),),
              ),
            ],
            content: Text('Your OTP is 123456 (for now)'),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        backgroundColor: Theme.of(context).backgroundColor,

        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('images/illustration2.png',width: double.infinity,)
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
                      height: 33,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 25,
                            ),
                            Text('Verify Your ',style: TextStyle(
                              color: Colors.black,
                              fontSize: 33,
                            ),),
                            Text('Mobile',style: TextStyle(
                              color: Colors.black,
                              fontSize: 33,
                              fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
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
                            Text('Enter 6 Digit OTP Code Sent\nto Your Phone No.',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 20,
                            ),),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: TextFormField(
                        controller: controler,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        maxLength: 6,
                        cursorColor: Theme.of(context).primaryColor,
                        decoration: InputDecoration(
                          labelText: 'Enter Your 6 Digit OTP.',
                          hintText: '123456',
                          helperText: 'OTP = 123456',
                          suffixIcon: Icon(
                            Icons.message,
                            color: Theme.of(context).primaryColor,
                            size: 25,
                          ),
                        ),
                        validator: (otp) {
                          if (otp.isEmpty) {
                            return 'Please enter OTP.';
                          }
                          else if (otp.length < 6) {
                            return 'Invalid OTP.';
                          }
                          else if (otp != '123456') {
                            return 'OTP Do Not Match.';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Text('Resend OTP',style: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                          fontSize: 15,
                        ),),
                      ],
                    ),
                    SizedBox(
                      height: 50,
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
                                return ProfileSetup();
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
        ),
      ),
    );
  }
}
