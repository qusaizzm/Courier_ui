import 'package:new_app/constants.dart';
import 'package:new_app/screens/buy.dart';
import 'package:new_app/screens/menu.dart';
import 'package:new_app/screens/notifications.dart';
import 'package:new_app/screens/point.dart';
import 'package:new_app/widgets/app_clipper.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter/cupertino.dart';
import 'package:new_app/widgets/bottombar.dart';

class Wallet extends StatefulWidget {
  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  var paddingLeft = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(
        ofActive: false,
        homeActive: true,
        proActive: false,
      ),
      backgroundColor: Color(0xFFF2F2F2),
    
        
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          textDirection: TextDirection.ltr,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 60),
              child: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      _appBar(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'رصيدك الحالي : 00.0 ر.س',
                                style: TextStyle(
                                    color: Color(0xFF0C2444),
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Cairo'),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Form(
                                  //key: _formKey,

                                  child: Column(
                                    //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          ' اضافة رصيد :',
                                          style: TextStyle(
                                              color: Color(0xffD91F26),
                                              fontSize: 23.0,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Cairo'),
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          // _nameTextField(),
                                          new Flexible(
                                            child: new TextField(
                                              style: TextStyle(
                                                  fontSize: 15.0,
                                                  color: Color(0xFF8D8D8D),
                                                  fontFamily: 'Cairo'),
                                              decoration: InputDecoration(
                                                focusColor: Colors.transparent,
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        vertical: 5.0,
                                                        horizontal: 5.0),
                                                filled: true,
                                                fillColor: Color(0xFFE2E3E3),
                                                border: new OutlineInputBorder(
                                                  borderSide: new BorderSide(
                                                    color: Colors.transparent,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                hintText: '   ادخل المبلغ ',
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              // Navigator.push(
                                              //   context,
                                              //   MaterialPageRoute(builder: (context) => PagesTestWidget()),
                                              // );
                                            },
                                            child: Container(
                                              height: 50.0,
                                              width: 70.0,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                color: Color(0xFF0C2444),
                                              ),
                                              child: Center(
                                                  child: Text(
                                                'إضافة',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.white,
                                                    fontFamily: 'Cairo'),
                                              )),
                                            ),
                                          ),

                                          // new Flexible(
                                          //   child: new TextField(
                                          //     decoration: const InputDecoration(
                                          //         helperText: "Enter App ID"),
                                          //     style: Theme.of(context).textTheme.body1,
                                          //   ),
                                          // ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20.0,
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          'طريقة الدفع :',
                                          style: TextStyle(
                                              color: Color(0xffD91F26),
                                              fontSize: 23.0,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Cairo'),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              padding: EdgeInsets.all(5.0),
                                              color: Colors.black12,
                                              child: Icon(Icons.add,
                                                  color: Colors.black),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Text(
                                            'فيزا طارد',
                                            style: TextStyle(
                                                color: Color(0xFF0C2444),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Cairo'),
                                          ),
                                          // Icon(Icons.star, color: Colors.black),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              padding: EdgeInsets.all(5.0),
                                              color: Colors.black12,
                                              child: Icon(Icons.add,
                                                  color: Colors.black),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Text(
                                            'باي بال',
                                            style: TextStyle(
                                                color: Color(0xFF0C2444),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Cairo'),
                                          ),
                                          // Icon(Icons.star, color: Colors.black),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              padding: EdgeInsets.all(5.0),
                                              color: Colors.black12,
                                              child: Icon(Icons.add,
                                                  color: Colors.black),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),

                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Text(
                                            'محفظة كوراير',
                                            style: TextStyle(
                                                color: Color(0xFF0C2444),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Cairo'),
                                          ),
                                          // Icon(Icons.star, color: Colors.black),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20.0,
                                      ),
                                      Column(
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 5.0, bottom: 4.0),
                                            height: 3.0,
                                            // width: 180.0,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50.0),
                                              color: Color(0xFF0C2444),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Column(
                                          children: [
                                            Text(
                                              'تحويل رصيد :',
                                              style: TextStyle(
                                                  color: Color(0xffD91F26),
                                                  fontSize: 23.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Cairo'),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'من :',
                                            style: TextStyle(
                                                color: Color(0xFF0C2444),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Cairo'),
                                          ),
                                          SizedBox(
                                            width: 30.0,
                                          ),

                                          new Flexible(
                                            child: new TextField(
                                              style: TextStyle(
                                                  fontSize: 15.0,
                                                  color: Color(0xFF8D8D8D),
                                                  fontFamily: 'Cairo'),
                                              decoration: InputDecoration(
                                                focusColor: Colors.transparent,
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        vertical: 5.0,
                                                        horizontal: 5.0),
                                                filled: true,
                                                fillColor: Color(0xFFE2E3E3),
                                                border: new OutlineInputBorder(
                                                  borderSide: new BorderSide(
                                                    color: Colors.transparent,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                hintText: '   انا ',
                                              ),
                                            ),
                                          ),

                                          // Icon(Icons.star, color: Colors.black),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'الي :',
                                            style: TextStyle(
                                                color: Color(0xFF0C2444),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Cairo'),
                                          ),
                                          SizedBox(
                                            width: 30.0,
                                          ),
                                          new Flexible(
                                            child: new TextField(
                                              style: TextStyle(
                                                  fontSize: 15.0,
                                                  color: Color(0xFF8D8D8D),
                                                  fontFamily: 'Cairo'),
                                              decoration: InputDecoration(
                                                focusColor: Colors.transparent,
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        vertical: 5.0,
                                                        horizontal: 5.0),
                                                filled: true,
                                                fillColor: Color(0xFFE2E3E3),
                                                border: new OutlineInputBorder(
                                                  borderSide: new BorderSide(
                                                    color: Colors.transparent,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                hintText: '   المرسل ',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'المبلغ :',
                                            style: TextStyle(
                                                color: Color(0xFF0C2444),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Cairo'),
                                          ),
                                          SizedBox(
                                            width: 16.0,
                                          ),
                                          new Flexible(
                                            child: new TextField(
                                              style: TextStyle(
                                                  fontSize: 15.0,
                                                  color: Color(0xFF8D8D8D),
                                                  fontFamily: 'Cairo'),
                                              decoration: InputDecoration(
                                                focusColor: Colors.transparent,
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        vertical: 5.0,
                                                        horizontal: 5.0),
                                                filled: true,
                                                fillColor: Color(0xFFE2E3E3),
                                                border: new OutlineInputBorder(
                                                  borderSide: new BorderSide(
                                                    color: Colors.transparent,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                hintText: '   انا ',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 30.0,
                                      ),
                                      _btn(),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
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
                        ],
                      ),
                    ],
                  ),
                ),
              ),

//              _buildRightSection(),
            ),
            _sidebar(),
            _positioned("المحفظة", "مكافئه", " المشتريات  ", "الاشعارات"),
          ],
        ),
      ),
    );
  }

  Widget _sidebar() {
    return Container(
      color: goldColor,
      height: MediaQuery.of(context).size.height,
      width: 60,
      padding: EdgeInsets.only(top: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Menu()),
              );
            },
            child: Icon(Icons.menu),
          ),
          SizedBox(
            height: 10,
          ),
          Icon(Icons.search),
        ],
      ),
    );
  }

  Widget _buildMenu(String menu, int index, onTap) {
    return GestureDetector(
      onTap: () {
        setState(() {
          paddingLeft = index * 0.0;
        });
      },
      child: Container(
        width: 110.0,
        padding: EdgeInsets.only(top: 15),
        child: Center(
          child: GestureDetector(
            onTap: onTap,
            child: Text(
              menu,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _positioned(String txt1, String txt2, String txt3, String txt4) {
    return Positioned(
      bottom: -110,
      child: Transform.rotate(
        angle: -math.pi / 2,
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(width: 20.0),
                _buildMenu(txt1, 0, () {}),
                _buildMenu(txt2, 1, () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Point()),
                  );
                }),
                _buildMenu(txt3, 2, () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Buy()),
                  );
                }),
                _buildMenu(txt4, 3, () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NotificationsWidget()),
                  );
                }),
              ],
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 250),
              margin: EdgeInsets.only(right: paddingLeft),
              width: 150,
              height: 75,
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ClipPath(
                      clipper: AppClipper(),
                      child: Container(
                        width: 150,
                        height: 70,
                        color: goldColor,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Transform.rotate(
                      angle: math.pi / 2,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Container(
                          margin: EdgeInsets.all(30.0),
                          height: 30.0,
                          width: 15.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget _nameTextField() {
  //   return TextFormField(
  //     style: TextStyle(fontSize: 15.0, color: Color(0xFF8D8D8D)),
  //     decoration: InputDecoration(
  //       focusColor: Colors.transparent,
  //       contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
  //       filled: true,
  //       fillColor: Color(0xFFE2E3E3),
  //       border: new OutlineInputBorder(
  //         borderSide: new BorderSide(
  //           color: Colors.transparent,
  //         ),
  //         borderRadius: BorderRadius.circular(50.0),
  //       ),
  //       hintText: 'رقم الهاتف',
  //       prefixIcon: Icon(Icons.smartphone, color: Color(0xFFA0C2444)),
  //     ),
  //     validator: (String value) {
  //       if (value.length < 8) {
  //         return 'Password must be at least 8 characters long.';
  //       }
  //       return null;
  //     },
  //   );
  // }

  Widget _btn() {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => PagesTestWidget()),
        // );
      },
      child: Container(
        height: 40.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: Color(0xFF0C2444),
        ),
        child: Center(
            child: Text(
          'تحويل',
          style: TextStyle(fontSize: 18, color: Colors.white),
        )),
      ),
    );
  }
}

// ignore: camel_case_types
class _appBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                // Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 6.0,
                ),
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 40,
                ),
              ),
            ),
            SizedBox(
              width: 40.0,
            ),
            Center(
              child: Text(
                'محفظة كورير',
                style: TextStyle(
                  color: Color(0xffD91F26),
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
