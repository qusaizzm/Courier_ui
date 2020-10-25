import 'dart:io';
import 'package:new_app/constants.dart';
import 'package:new_app/screens/add_stor.dart';
import 'package:new_app/screens/buy.dart';
import 'package:new_app/screens/car_services.dart';
import 'package:new_app/screens/delivery.dart';
import 'package:new_app/screens/home.dart';
import 'package:new_app/widgets/app_clipper.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:new_app/screens/contect_us.dart';
import 'package:new_app/screens/edit.dart';
import 'package:new_app/screens/history.dart';
import 'package:new_app/screens/notifications.dart';
import 'package:new_app/screens/point.dart';
import 'package:new_app/screens/wallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:new_app/widgets/bottombar.dart';

enum SingingCharacter { lafayette, jefferson }

class Menu extends StatefulWidget {
  Menu({Key key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  PageController pageController = PageController(viewportFraction: .8);
  var paddingLeft = 0.0;

  @override
  // double _lights;
  // SingingCharacter _character = SingingCharacter.lafayette;

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(
        ofActive: false,
        homeActive: false,
        proActive: true,
      ),
      // drawer: SidebarLayout(),
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Container(
                            height: 60,
                            color: blueColor,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(1.0),
                                    child: Container(
                                      padding: const EdgeInsets.all(0.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xFF0C2444)),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(50.0),
                                        ),
                                        color: Color(0xffe9d7be),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          CircleAvatar(
                                            child: Icon(
                                              Icons.person,
                                              size: 24,
                                              color: Color(0xFF0C2444),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'الاء عبدالرحمن سيد احمد',
                                    style: TextStyle(
                                        fontFamily: 'Cairo',
                                        color: Colors.white),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Edit()),
                                      );
                                    },
                                    child: Icon(
                                      Icons.edit,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20.0),
                          _menuItem(
                            icon: Icons.home,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeWidget()),
                              );
                            },
                            name: 'الرئيسية',
                          ),
                          _menuItem(
                            icon: Icons.add,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddStor()),
                              );
                            },
                            name: 'اضف متجرك معنا',
                          ),
                          _menuItem(
                            icon: Icons.account_balance_wallet,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Wallet()),
                              );
                            },
                            name: 'المحفظة',
                          ),
                          _menuItem(
                            icon: Icons.card_giftcard,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Point()),
                              );
                            },
                            name: 'نقاط المكاقئه',
                          ),
                          _menuItem(
                            name: 'سجل رحلاتي',
                            icon: Icons.drive_eta,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Histroy()),
                              );
                            },
                          ),
                          _menuItem(
                            name: 'المشترياتٍ ',
                            icon: Icons.feedback,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Buy()),
                              );
                            },
                          ),
                          _menuItem(
                            name: 'الاشعارات',
                            icon: Icons.navigation,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        NotificationsWidget()),
                              );
                            },
                          ),
                          _menuItem(
                            name: 'تواصل معنا',
                            icon: Icons.feedback,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ContectUs()),
                              );
                            },
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(40.0, 0, 20.0, 10.0),
                            child: GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25.0),
                                      border:
                                          Border.all(color: Color(0xFFffffff)),
                                    ),
                                    child: new AlertDialog(
                                      content: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFF0C2444),
                                          borderRadius:
                                              BorderRadius.circular(22.0),
                                          border: Border.all(
                                              color: Color(0xFFffffff)),
                                          // border: Border.all(color: Color(0xFFffffff)),
                                        ),
                                        width: double.infinity,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: <Widget>[
                                                  GestureDetector(
                                                    onTap: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Container(
                                                      height: 20,
                                                      width: 20,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(22.0),
                                                        color:
                                                            Color(0xffd09031),
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
                                                padding:
                                                    const EdgeInsets.all(13.0),
                                                child: Container(
                                                  child: Text(
                                                    "هل تريد حقا تسجل الخروج",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color:
                                                            Color(0xffd09031)),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                  child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  GestureDetector(
                                                    onTap: () {
                                                      exit(0);
                                                    },
                                                    child: Container(
                                                      width: 80.0,
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 10),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        color: Colors.red,
                                                      ),
                                                      child: Text(
                                                        "نعم",
                                                        textAlign:
                                                            TextAlign.center,
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
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 10),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        color: Colors.black45,
                                                      ),
                                                      child: Text(
                                                        "لا",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xffd09031),
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
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  CircleAvatar(
                                    backgroundColor: Color(0xFF0C2444),
                                    child: Icon(
                                      Icons.all_out,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'تسجيل الخروج',
                                      style: TextStyle(
                                          color: Color(0xffD91F26),
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Cairo'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
            _positioned(
                "الخدمات", "توصيل طليات", "توصبل ركاب", "تسوف في متجرنا"),
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
            onTap: () {},
            child: Icon(Icons.menu),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              print("klklklk");
              setState(() {
                Text("kjkjkj");
              });
            },
            child: AnimatedSwitcher(
              duration: const Duration(seconds: 1),
              child: _icon(),
            ),
          )
        ],
      ),
    );
  }

  Widget _icon() {
    return Icon(Icons.search);
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
                    MaterialPageRoute(builder: (context) => Delivery()),
                  );
                }),
                _buildMenu(txt3, 2, () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CarServices()),
                  );
                }),
                _buildMenu(txt4, 3, () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddStor()),
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
}

// ignore: camel_case_types
class _menuItem extends StatelessWidget {
  final String name;
  final IconData icon;
  final Function onTap;

  const _menuItem({this.name, this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    // Widget _menuItem(String name, IconData icon, onTap) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(40.0, 0, 20.0, 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Color(0xFF0C2444),
                  child: Icon(
                    icon,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    name,
                    style: TextStyle(
                      color: Color(0xffD91F26),
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(40.0, 0, 20.0, 10.0),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
                height: 2.0,
                // width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Color(0xFF0C2444),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
