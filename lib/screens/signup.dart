import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_app/screens/login.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // final _formKey = GlobalKey<FormState>();

  // double _deviceHeight;
  // double _deviceWidth;
  @override
  Widget build(BuildContext context) {
    // _deviceHeight = MediaQuery.of(context).size.height;
    // _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: _bottomBavBar(),
      backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
        backgroundColor: Color(0xFFF2F2F2),
        elevation: 0.0,
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'انشاء حساب جديد',
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
                            _nameTextField("اسم المستخدم", Icons.person),
                            SizedBox(
                              height: 10.0,
                            ),
                            _nameTextField("كلمة السر", Icons.lock),
                            SizedBox(
                              height: 10.0,
                            ),
                            _nameTextField("رقم الهاتف", Icons.smartphone),
                            SizedBox(
                              height: 20.0,
                            ),
                            _btn(),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                                'بضغطك على تسجيل انت توافق على الاحكام و الشروط'),

                            //_btn(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _bottomBavBar() {
   return Container(
      decoration: BoxDecoration(color: Colors.transparent),
      padding: EdgeInsets.only(left: 4.0, right: 4.0),
      //margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 2),
      height: MediaQuery.of(context).size.height / 10,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'لديك حساب مسبقا؟',
                style: TextStyle(color: Colors.grey, fontSize: 18.0),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Text(
                  'تسجيل الدخول',
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
    );
  }

  Widget _nameTextField(txt, icon) {
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
        hintText: txt,
        prefixIcon: Icon(icon, color: Color(0xFFA0C2444)),
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
        borderRadius: BorderRadius.circular(15.0),
        color: Color(0xFF0C2444),
      ),
      child: Center(
          child: Text(
        'تسجيل',
        style: TextStyle(fontSize: 18, color: Colors.white),
      )),
    );
  }
}
