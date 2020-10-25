import 'package:new_app/constants.dart';
import 'package:new_app/screens/buy.dart';
import 'package:new_app/screens/menu.dart';
import 'package:new_app/screens/notifications.dart';
import 'package:new_app/screens/wallet.dart';
import 'package:new_app/widgets/app_clipper.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:new_app/widgets/bottombar.dart';

class Histroy extends StatefulWidget {
  @override
  _HistroyState createState() => _HistroyState();
}

class _HistroyState extends State<Histroy> {
  PageController pageController = PageController(viewportFraction: .8);
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.arrow_back_ios),
                            ),
                            SizedBox(
                              width: 40.0,
                            ),
                            Center(
                              child: Text(
                                'سجل رحلتي',
                                style: TextStyle(
                                    color: Color(0xffD91F26),
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Cairo'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      _list(
                          titel: 'لقد سافرت مع قصي الي الجنه',
                          date: "2020/09/04",
                          icon: Icons.directions_car,
                          press: () {}),
                      _list(
                          titel: 'لقد سافرت مع الجن الي الجنه',
                          date: "2020/09/04",
                          icon: Icons.directions_car,
                          press: () {}),
                      _list(
                          titel: 'لقد سافرت مع الناس الي الجنه',
                          date: "2020/09/04",
                          icon: Icons.directions_car,
                          press: () {}),
                      _list(
                          titel: 'لقد سافرت مع الناس الي الجنه',
                          date: "2020/09/04",
                          icon: Icons.directions_car,
                          press: () {}),
                      _list(
                          titel: 'لقد سافرت مع الناس الي الجنه',
                          date: "2020/09/04",
                          icon: Icons.directions_car,
                          press: () {}),
                      _list(
                          titel: 'لقد سافرت مع الناس الي الجنه',
                          date: "2020/09/04",
                          icon: Icons.directions_car,
                          press: () {}),
                      _list(
                          titel: 'لقد سافرت مع الناس الي الجنه',
                          date: "2020/09/04",
                          icon: Icons.directions_car,
                          press: () {}),
                      _list(
                          titel: 'لقد سافرت مع الزول الي الجنه',
                          date: "2020/09/04",
                          icon: Icons.directions_car,
                          press: () {})
                    ],
                  ),
                ),
              ),

//              _buildRightSection(),
            ),
            _sidebar(),
            _positioned("السجل", " المحفظه  ", " المشتريات  ", "   الاشعارات"),
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
                    MaterialPageRoute(builder: (context) => Wallet()),
                  );
                }),
                _buildMenu(txt3, 2, () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Buy()),
                  );
                }),
                _buildMenu(txt4, 3, () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationsWidget()),
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
class _list extends StatelessWidget {
  final String titel;
  final String date;
  final IconData icon;
  final Function press;

  const _list(
      {Key key,
      @required this.titel,
      @required this.date,
      @required this.icon,
      this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(icon),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titel,
                      textAlign: TextAlign.right,
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      "بتاريخ $date",
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, right: 4.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.cancel,
                      color: Color(0xfffaa3333),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );

  
  }
}
