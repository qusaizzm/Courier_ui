import 'package:flutter/material.dart';
import 'package:new_app/constants.dart';
import 'package:new_app/screens/add_stor.dart';
import 'package:new_app/screens/car_services.dart';
import 'package:new_app/screens/delivery.dart';
import 'package:new_app/screens/menu.dart';
import 'package:new_app/widgets/app_clipper.dart';
import 'dart:math' as math;
import 'package:new_app/widgets/bottombar.dart';

class ProductDetails extends StatefulWidget {
  // final String productName;
  // final double productPrice;
  // final String productImg;
  // final String productDescription;

  // const ProductDetails(
  //     {Key key,
  //     this.productName,
  //     this.productPrice,
  //     this.productImg,
  //     this.productDescription})
  //     : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  var paddingLeft = 0.0;

  @override
  Widget build(BuildContext context) {
    final String pro = ModalRoute.of(context).settings.arguments;

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
                      SizedBox(height: 30.0),
                      Container(
                        child: Center(
                          child: Text(pro),
                          // ProD(),
                        ),
                      )
                      // proDetails(productName:productName,),
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
}

// class ProD extends StatelessWidget {
//     final List<Product> products;
//
//   const ProD({Key key, @required this.products}) : super(key: key);
//
//
//   @override
//   Widget build(BuildContext context , imdex) {
//     return Text(productsv[imdex].name);
//   }
// }

// class proDetails extends StatelessWidget {
//   final String productName;
//   final double productPrice;
//   final String productImg;
//   final String productDescription;

//   const proDetails(
//       {Key key,
//       @required this.productName,
//       this.productPrice,
//       this.productImg,
//       this.productDescription})
//       : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(
//         child: Text(productName),
//       ),
//     );
//   }
// }

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
                  Icons.shopping_cart,
                  size: 40,
                ),
              ),
            ),
            SizedBox(
              width: 40.0,
            ),
            Center(
              child: Text(
                ' المتجر',
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
