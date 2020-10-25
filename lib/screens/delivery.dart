import 'package:new_app/screens/contect_us.dart';
import 'package:new_app/screens/menu.dart';
import 'package:new_app/constants.dart';
import 'package:new_app/screens/profile.dart';
import 'package:new_app/widgets/app_clipper.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:new_app/screens/pharms.dart';
import 'package:new_app/screens/resturant.dart';
import 'package:new_app/widgets/bottombar.dart';
import 'package:new_app/widgets/list_Dele.dart';

class Delivery extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;

  Delivery({Key key, this.parentScaffoldKey}) : super(key: key);
  @override
  _DeliveryState createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
  PageController pageController = PageController(viewportFraction: .8);
  var paddingLeft = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(
        ofActive: false,
        homeActive: false,
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
              padding: EdgeInsets.only(left: 60, top: 40),
              child: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          _tab('الكل', Color(0xffe2e3e3), Color(0xffd91f26),
                              true, () {}),
                          _tab('مطاعم', Color(0xfff3e0c8), Color(0xff0c2444),
                              false, () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfileWidget()),
                            );
                          }),
                          _tab('سوبر ماركت', Color(0xfff3e0c8),
                              Color(0xff0c2444), false, () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Resturant()),
                            );
                          }),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              ListDreviry(
                                  img: AssetImage(
                                      "assets/img/Pharmacy-Assistant.jpg"),
                                  title: "صيدليات",
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Pharms()),
                                    );
                                  }),
                              ListDreviry(
                                  img: AssetImage("assets/img/02.jpg"),
                                  title: "مطاعم",
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ProfileWidget()),
                                    );
                                  })
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              ListDreviry(
                                  img: AssetImage("assets/img/shop.jpg"),
                                  title: "سوبرماركت",
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Resturant()),
                                    );
                                  }),
                              ListDreviry(
                                  img: AssetImage("assets/img/20.jpg"),
                                  title: "توصيل",
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ContectUs()),
                                    );
                                  })
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              ListDreviry(
                                  img: AssetImage(
                                      "assets/img/Pharmacy-Assistant.jpg"),
                                  title: "صيدليات",
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Pharms()),
                                    );
                                  }),
                              ListDreviry(
                                  img: AssetImage("assets/img/02.jpg"),
                                  title: "مطاعم",
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ProfileWidget()),
                                    );
                                  })
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              ListDreviry(
                                  img: AssetImage("assets/img/shop.jpg"),
                                  title: "سوبرماركت",
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Resturant()),
                                    );
                                  }),
                              ListDreviry(
                                  img: AssetImage("assets/img/20.jpg"),
                                  title: "توصيل",
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ContectUs()),
                                    );
                                  })
                            ],
                          ),
                        ],
                      ),
                      // // SidebarLayout(),
                    ],
                  ),
                ),
              ),

//              _buildRightSection(),
            ),
            _sidebar(),
            _positioned("الخدمات", " مطاعم", " سوبر ماركت", "المتجر"),
          ],
        ),
      ),
    );
  }

//   Widget _lkdmme(String title, onTap, AssetImage img) {
//     return Expanded(
//       child: GestureDetector(
//         onTap: onTap,
//         child: Stack(
//           children: [
//             Positioned(
//               child: Opacity(
//                 opacity: 0.6,
//                 child: Container(
//                   margin: EdgeInsets.only(top: 8.0, left: 4.0, right: 4.0),
//                   padding: EdgeInsets.all(8.0),

//                   height: 130.0,

//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                         image: AssetImage("assets/img/2.jpg"),
//                         fit: BoxFit.cover),
//                     borderRadius: BorderRadius.circular(22.0),
//                     color: Colors.red, //0xffe2e3e3
//                   ),
//                   //
//                 ),
//               ),
//             ),
//             Positioned(
//               top: 90,
//               right: 15,
//               child: Container(
//                 decoration: BoxDecoration(
//                   boxShadow: kElevationToShadow[2],
//                 ),
//                 child: Text(
//                   "kkkkkk",
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _services(String title, onTap, AssetImage img) {
//     return Expanded(
//       child: GestureDetector(
//         onTap: onTap,
//         child: Container(
//           margin: EdgeInsets.only(top: 8.0, left: 4.0, right: 4.0),
//           padding: EdgeInsets.all(8.0),
// //            width: 89.0,
//           height: 130.0,
//           decoration: BoxDecoration(
//             image: DecorationImage(image: img, fit: BoxFit.cover),
//             borderRadius: BorderRadius.circular(22.0),
//             color: const Color(0xffe2e3e3),
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: <Widget>[
//               SizedBox(
//                 height: 20.0,
//               ),
//               Text(
//                 title,
//                 textAlign: TextAlign.start,
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 14.0,
//                   shadows: [
//                     Shadow(
//                       blurRadius: 10.0,
//                       color: Colors.black,
//                       offset: Offset(5.0, 3.0),
//                     ),
//                   ],
//                 ),

//                 // style: TextStyle(color: Colors.red, fontSize: 16.0),
//               ),
//               SizedBox(
//                 height: 10.0,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

  Widget _tab(String txt, Color back, Color txtcol, bool border, onTap()) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        padding: EdgeInsets.only(left: 12.0, right: 12.0),
        child: Text(
          txt,
          style: TextStyle(color: txtcol, fontSize: 18.0),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: back,
          border:
              border ? Border.all(width: 1.0, color: Color(0xff0c2444)) : null,
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
      bottom: -120,
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
                    MaterialPageRoute(builder: (context) => ProfileWidget()),
                  );
                }),
                _buildMenu(txt3, 2, () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Resturant()),
                  );
                }),
                _buildMenu(txt4, 3, () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Resturant()),
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
