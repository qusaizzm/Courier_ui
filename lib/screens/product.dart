import 'package:flutter/material.dart';
import 'package:new_app/constants.dart';
import 'package:new_app/screens/add_stor.dart';
import 'package:new_app/screens/car_services.dart';
import 'package:new_app/screens/delivery.dart';
import 'package:new_app/screens/menu.dart';
import 'package:new_app/shop/cart.dart';
import 'package:new_app/styleguide/text_styles.dart';
import 'package:new_app/widgets/app_clipper.dart';
import 'dart:math' as math;
import 'package:new_app/widgets/bottombar.dart';

class ProductInfo extends StatefulWidget {
  @override
  _ProductInfoState createState() => _ProductInfoState();
}

class _ProductInfoState extends State<ProductInfo> {
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
              padding: EdgeInsets.only(left: 60),
              child: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      _appBar(),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          color: geryColor,
                          child: Center(
                            child: Column(
//
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.all(30.0),
                                  height: 200.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    //color: blueColor,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(22.0),
                                    child: Image.asset(
                                      "assets/img/Pharmacy-Assistant.jpg",
                                      height:
                                          MediaQuery.of(context).size.height,
                                      width: MediaQuery.of(context).size.width,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 30.0, right: 30.0, bottom: 40),

//                          padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Text(
                                        " المقاس :",
                                        maxLines: 2,
                                        softWrap: true,
                                        style: TextStyle(
                                            color: Color(0xFF0C2444),
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "M",
                                        maxLines: 2,
                                        softWrap: true,
                                        style: TextStyle(
                                            color: Color(0xFF0C2444),
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 30.0, right: 30.0, bottom: 40),

//                          padding: const EdgeInsets.all(8.0),

                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Text(
                                        " الالوان :",
                                        maxLines: 2,
                                        softWrap: true,
                                        style: TextStyle(
                                            color: Color(0xFF0C2444),
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            height: 20.0,
                                            width: 20.0,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                              color: Colors.black,
                                              //color: blueColor,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5.0,
                                          ),
                                          Container(
                                            height: 20.0,
                                            width: 20.0,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                              color: Colors.blue,
                                              //color: blueColor,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 30.0, right: 30.0, bottom: 40),

//                          padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Text(
                                        " السعر :",
                                        maxLines: 2,
                                        softWrap: true,
                                        style: TextStyle(
                                            color: Color(0xFF0C2444),
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "\$50",
                                        maxLines: 2,
                                        softWrap: true,
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: _btn('موافقه', () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ShopCart(),
                                      ),
                                    );
                                  }),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: _bar(),
                      ),
                      _barBottom(),
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

//   Widget _filedAndImg() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: <Widget>[
//         GestureDetector(
//           onTap: () {
// //            Navigator.push(
// //              context,
// //              MaterialPageRoute(builder: (context) => MyOrder()),
// //              // PagesTestWidget()),
// //            );
//           },
//           child: Container(
//             margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
//             width: 80,
//             height: 80,
//             decoration: BoxDecoration(
//                 border: Border.all(color: Color(0xFF0C2444)),
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(14),
//                 ),
//                 color: Colors.white,
//                 image:
//                     DecorationImage(image: AssetImage("assets/img/gift.png"))),
//           ),
//         ),

//         _textFieldIcon(),
// //
//       ],
//     );
//   }

//   Widget _filedIconAndText() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: <Widget>[
//         Text(
//           "تاريخ الانطلاق",
//           maxLines: 2,
//           softWrap: true,
//           style: TextStyle(
//               color: Color(0xFF0C2444),
//               fontSize: 14.0,
//               fontWeight: FontWeight.bold),
//         ),

//         _textFieldIcon(),
// //
//       ],
//     );
//   }

//   Widget _filedAndText() {
//     return Row(
//       children: <Widget>[
//         Text(
//           "تاريخ الانطلاق",
//           maxLines: 2,
//           softWrap: true,
//           style: TextStyle(
//               color: Color(0xFF0C2444),
//               fontSize: 14.0,
//               fontWeight: FontWeight.bold),
//         ),

//         _textField(),

// //
//       ],
//     );
//   }

  Widget _bar() {
    return Column(
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
    );
  }

//   Widget _headText() {
//     return Padding(
//       padding: const EdgeInsets.only(left: 8.0, right: 0, top: 8.0, bottom: 0),
//       child: Row(
//         children: <Widget>[
// //
//           Text(
//             "تفاصيل الوجهه :",
//             maxLines: 2,
//             softWrap: true,
//             style: TextStyle(
//                 color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _textField() {
//     return new Flexible(
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: new TextField(
//           style: TextStyle(
//               fontSize: 15.0, color: Color(0xFF8D8D8D), fontFamily: 'Cairo'),
//           decoration: InputDecoration(
//             focusColor: Colors.transparent,
//             contentPadding:
//                 EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
//             filled: true,
//             fillColor: Color(0xFFE2E3E3),
//             enabledBorder: new OutlineInputBorder(
//               borderSide: new BorderSide(
//                 color: Colors.transparent,
//               ),
//               borderRadius: BorderRadius.circular(10.0),
//             ),
//             hintText: ' 2020/02/01',
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _textFieldIcon() {
//     return new Flexible(
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: new TextField(
//           textAlign: TextAlign.center,
//           style: TextStyle(
//               fontSize: 15.0, color: Color(0xFF8D8D8D), fontFamily: 'Cairo'),
//           decoration: InputDecoration(
//             focusColor: Colors.transparent,
//             contentPadding:
//                 EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
//             filled: true,
//             fillColor: Color(0xFFE2E3E3),
// //            icon: Icon(Icons.keyboard_arrow_down),
//             enabledBorder: new OutlineInputBorder(
//               borderSide: new BorderSide(
//                 color: Colors.transparent,
//               ),
//               borderRadius: BorderRadius.circular(10.0),
//             ),
//             prefixIcon: Icon(Icons.keyboard_arrow_down),

//             hintText: ' 2020/02/01',
//           ),
//         ),
//       ),
//     );
//   }

  Widget _btn(String txt, onClick()) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        padding:
            EdgeInsets.only(top: 8.0, bottom: 8.0, left: 30.0, right: 30.0),
        //height: 60.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: blueColor,
        ),
        child: Center(child: Text(txt, style: normalWhiteStyle)),
      ),
    );
  }

  Widget _barBottom() {
    return Container(
      margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
      height: 5.0,
      width: 180.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: Color(0xFF0C2444),
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
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 25,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 40.0,
            ),
            Center(
              child: Text(
                ' الطليات',
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
