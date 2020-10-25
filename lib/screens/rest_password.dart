import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_app/screens/signup.dart';
//import '../constants.dart';

class ResetPass extends StatefulWidget {
  @override
  _ResetPassState createState() => _ResetPassState();
}

class _ResetPassState extends State<ResetPass> {
  // final _formKey = GlobalKey<FormState>();

  // double _deviceHeight;
  // double _deviceWidth;
  @override
  Widget build(BuildContext context) {
    // _deviceHeight = MediaQuery.of(context).size.height;
    // _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
        backgroundColor: Color(0xFFF2F2F2),
        elevation: 0.0,
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Column(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'نسيت كلمة السر',
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
                    child: Text(
                      'الرجاء التحقق من رقم الهاتف لانشاء كلمة سر جديده.',
                      style: TextStyle(
                          color: Color(0xff0c2444),
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
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
                          _nameTextField(),
                          SizedBox(
                            height: 20.0,
                          ),
                          _btn(),
                          SizedBox(
                            height: 15.0,
                          ),

                          //_btn(),
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
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.transparent),
        padding: EdgeInsets.only(left: 4.0, right: 4.0),
        //margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 2),
        height: MediaQuery.of(context).size.height / 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
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

  Widget _nameTextField() {
    return TextFormField(
      style: TextStyle(fontSize: 14.0, color: Color(0xFF8D8D8D)),
      decoration: InputDecoration(
        focusColor: Colors.transparent,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
        filled: true,
        fillColor: Color(0xFFE2E3E3),
        border: new OutlineInputBorder(
          borderSide: new BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: 'رقم الهاتف',
        prefixIcon: Icon(Icons.smartphone, color: Color(0xFFA0C2444)),
      ),
      validator: (String value) {
        if (value.length < 8) {
          return 'Password must be at least 8 characters long.';
        }
        return null;
      },
    );
  }

  Widget _btn() {
    return Container(
      height: 45.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Color(0xFF0C2444),
      ),
      child: Center(
          child: Text(
        'تحقق',
        style: TextStyle(fontSize: 18, color: Colors.white),
      )),
    );
  }
}
