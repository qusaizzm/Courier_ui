import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:new_app/screens/login_ver.dart';

import 'package:new_app/screens/rest_password.dart';
import 'package:new_app/screens/signup.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // final _formKey = GlobalKey<FormState>();

  // double _deviceHeight;
  // double _deviceWidth;
  TextEditingController myNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // _deviceHeight = MediaQuery.of(context).size.height;
    // _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
        backgroundColor: Color(0xFFF2F2F2),
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  border: Border.all(color: Color(0xFFffffff)),
                ),
                child: new AlertDialog(
                  content: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF0C2444),
                      borderRadius: BorderRadius.circular(22.0),
                      border: Border.all(color: Color(0xFFffffff)),
                      // border: Border.all(color: Color(0xFFffffff)),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(22.0),
                                    color: Color(0xffd09031),
                                  ),
                                  child: new Icon(
                                    Icons.close,
                                    color: Colors.black,
                                    size: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Container(
                              child: Text(
                                "هل تريد حقا تسجل الخروج",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xffd09031)),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  exit(0);
                                },
                                child: Container(
                                  width: 80.0,
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.red,
                                  ),
                                  child: Text(
                                    "نعم",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  width: 80.0,
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.black45,
                                  ),
                                  child: Text(
                                    "لا",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xffd09031),
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                        ],
                      ),
                    ),
                  ),
                  elevation: 0.0,
                  backgroundColor: Color(0xFFF),
                ),
              ),
            );
          },
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
      // bottomSheet: _modalBottomSheetMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'تسجيل الدخول',
                    style: TextStyle(
                        color: Color(0xffD91F26),
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Form(
                      //key: _formKey,

                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          // _country(),
                          _nameTextField(),
                          SizedBox(
                            height: 10.0,
                          ),
                          _btn(),
                          SizedBox(
                            height: 15.0,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ResetPass()),
                              );
                            },
                            child: Text('هل نسيت كله السر'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: _modalBottomSheetMenu(),
    );
  }

  Widget _modalBottomSheetMenu() {
    return Container(
      decoration: BoxDecoration(color: Colors.transparent),
      padding: EdgeInsets.only(left: 4.0, right: 4.0),
      //margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 2),
      height: MediaQuery.of(context).size.height / 10,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'ليس لدسك حساب؟',
                  style: TextStyle(color: Colors.grey, fontSize: 18.0),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage()),
                    );
                  },
                  child: Text(
                    'انشاء حساب',
                    style: TextStyle(color: Colors.red, fontSize: 18.0),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
              height: 5.0,
              width: 180.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: Color(0xFF0C2444),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _btn() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => LoginVer(
                  // number: myNumber.toString(),
                  )),
        );
      },
      child: Container(
        height: 40.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: Color(0xFF0C2444),
        ),
        child: Center(
            child: Text(
          'دخول',
          style: TextStyle(fontSize: 18, color: Colors.white),
        )),
      ),
    );
  }

  Widget _nameTextField() {
    return Stack(
      children: [
        Center(
          child: TextFormField(
            controller: myNumber,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.phone,
            style: TextStyle(
              fontSize: 14.0,
              color: Color(0xFF8D8D8D),
            ),
            decoration: InputDecoration(
              focusColor: Colors.transparent,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
              filled: true,
              fillColor: Color(0xFFE2E3E3),
              border: new OutlineInputBorder(
                borderSide: new BorderSide(
                  color: Colors.transparent,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              hintText: 'رقم الهاتف',
              // prefixIcon: Icon(Icons., color: Color(0xFFA0C2444)),
            ),
            validator: (String value) {
              if (value.length < 8) {
                return 'Password must be at least 8 characters long.';
              }
              return null;
            },
          ),
        ),
        Positioned(
          bottom: 10,
          left: 13,
          child: Text("966"),
        ),
        Positioned(
          bottom: 15,
          right: 10,
          child: Container(
            height: 20,
            width: 30,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage("assets/img/sa.png"), fit: BoxFit.cover),
            ),
          ),
        )
      ],
    );
  }
}
