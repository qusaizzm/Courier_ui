import 'package:new_app/constants.dart';
import 'package:new_app/screens/cart.dart';
import 'package:new_app/screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_app/widgets/bottombar.dart';

class MyOrder extends StatefulWidget {
  @override
  _MyOrderState createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: BottomBar(
        ofActive: false,
        homeActive: false,
        proActive: false,
      ),
      backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
        backgroundColor: Color(0xFFF2F2F2),
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeWidget()),
            );
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Center(
          child: Text(
            'طلباتي',
            style: TextStyle(
                color: Color(0xffD91F26),
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Cairo'),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
//              createCartList(),
              createCartListItem(
                  AssetImage("assets/img/gift.png"), "ايطالي بيتزا", "12.00\$"),
              createCartListItem(AssetImage("assets/img/gift.png"),
                  "الفرنسي بيتزا", "12.00\$"),
              createCartListItem(
                  AssetImage("assets/img/op.jpg"), "كلك بيتزا", "12200\$"),
              createCartListItem(
                  AssetImage("assets/img/head.JPG"), "الزهيم بيتزا", "10.00\$"),
              _headText(
                "اضاقة المزيد من الطلبات",
                Colors.red,
                Icons.loupe,
              ),
              _bar(),
              _headText(
                "اضف ملاحظة",
                blueColor,
                Icons.edit,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 18.0, right: 18.0, top: 8.0, bottom: 8.0),
                child: TextFormField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 3,
                  maxLength: 40,
                  style: TextStyle(fontSize: 22.0, color: Color(0xFF8D8D8D)),
                  decoration: InputDecoration(
                    focusColor: Colors.transparent,
//                                contentPadding: EdgeInsets.symmetric(
//                                    vertical: 10.0, horizontal: 5.0),
                    filled: true,
                    fillColor: Color(0xffe2e3e3),
                  ),
                ),
              ),
              _btn(),
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
      ),
     
    );
  }

//  createCartList() {
//    return ListView.builder(
//      shrinkWrap: true,
//      primary: false,
//      itemBuilder: (context, position) {
//        return createCartListItem(AssetImage("assets/img/gift.png"));
//      },
//      itemCount: 3,
//    );
//  }

  createCartListItem(AssetImage img, String txt, String price) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 16, right: 16, top: 16),
          decoration: BoxDecoration(
              color: Color(0xffe2e3e3),
              borderRadius: BorderRadius.all(Radius.circular(16))),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF0C2444)),
                  borderRadius: BorderRadius.all(
                    Radius.circular(14),
                  ),
                  color: Colors.white,
                  image: DecorationImage(
                    image: img,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(right: 8, top: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    txt,
                                    maxLines: 2,
                                    softWrap: true,
                                    style: TextStyle(
                                        color: const Color(0xff0c2444),
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    price,
                                    style: TextStyle(
                                        color: const Color(0xff0c2444),
                                        fontSize: 16.0),
                                  ),
                                ]),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                   // delete fun
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(9999.0, 9999.0)),
                                      color: Colors.red,
                                    ),
                                    child: Icon(
                                      Icons.close,
                                      size: 24,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 0.5,
                            ),
                          ],
                        ),
                      ),
//                      Utils.getSizedBox(height: 6),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
//                            Text(
//                              "\$299.00",
////                              style: CustomTextStyle.textFormFieldBlack
////                                  .copyWith(color: Colors.green),
//                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xFF0C2444)),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(14),
                                  ),
                                  color: Color(0xffe9d7be),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.remove,
                                      size: 24,
                                      color: Color(0xFF0C2444),
                                    ),
                                    Text(
                                      "1",
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 16.0),
                                    ),
                                    Icon(
                                      Icons.add,
                                      size: 24,
                                      color: Color(0xFF0C2444),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                flex: 100,
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _bar() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18.0, 0, 20.0, 10.0),
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
    );
  }

  Widget _headText(String txt, Color color, IconData icon) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 8.0, right: 18.0, top: 8.0, bottom: 8.0),
      child: Row(
        children: <Widget>[
          Icon(icon, color: color),
          Text(
            txt,
            maxLines: 2,
            softWrap: true,
            style: TextStyle(
                color: color, fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _btn() {
    return Padding(
      padding: const EdgeInsets.only(
          left: 18.0, right: 18.0, top: 8.0, bottom: 18.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Cart()),
            // PagesTestWidget()),
          );
        },
        child: Container(
          height: 60.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: Color(0xFF0C2444),
          ),
          child: Center(
              child: Text(
            'اضف الى السلة',
            style: TextStyle(fontSize: 18, color: Colors.white),
          )),
        ),
      ),
    );
  }
}
