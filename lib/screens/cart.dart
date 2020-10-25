import 'package:new_app/screens/follow_order.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:new_app/widgets/bottombar.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
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
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Center(
          child: Text(
            'السلة',
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
              _headText(),
              Padding(
                padding: const EdgeInsets.only(
                    left: 18.0, right: 18.0, top: 8.0, bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: Color(0xFF0C2444),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "اضاقة المزيد من الطلبات",
                          maxLines: 2,
                          softWrap: true,
                          style: TextStyle(
                              color: Color(0xFF0C2444),
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "تغبير",
                          maxLines: 2,
                          softWrap: true,
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 18.0, right: 18.0, top: 8.0, bottom: 8.0),
                child: Column(
                  children: <Widget>[
                    _bar(),
                    SizedBox(
                      height: 10.0,
                    ),
                    _headTextIcon(),
                    SizedBox(
                      height: 10.0,
                    ),
                    _textField(),
                    _textFieldLeft(),
                    _bar(),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "االفاتوره ",
                          maxLines: 2,
                          softWrap: true,
                          style: TextStyle(
                              color: Color(0xFF0C2444),
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold),
                        ),
//          SizedBox(),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    _report(
                      "الاجمالي",
                      "\$76.00",
                    ),
                    _report(
                      "العدس",
                      "\$7622.00",
                    ),
                    _report(
                      "السكر",
                      "\$743.00",
                    ),
                    _bar(),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "السعر الكلي",
                          maxLines: 2,
                          softWrap: true,
                          style: TextStyle(
                            color: Color(0xFF0C2444),
                            fontSize: 19.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "\$76.00",
                          maxLines: 2,
                          softWrap: true,
                          style: TextStyle(
                            color: Color(0xFF0C2444),
                            fontSize: 19.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    _btn(),
                    SizedBox(
                      height: 15.0,
                    ),
                    _barBottom()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _report(String txt, String price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          txt,
          maxLines: 2,
          softWrap: true,
          style: TextStyle(
            color: Colors.red,
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          price,
          maxLines: 2,
          softWrap: true,
          style: TextStyle(
            color: Colors.red,
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

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

  Widget _headText() {
    return Padding(
      padding:
          const EdgeInsets.only(left: 8.0, right: 18.0, top: 8.0, bottom: 8.0),
      child: Row(
        children: <Widget>[
//          Icon(
//            Icons.note,
//            color: Colors.red,
//          ),
          Text(
            "اضاقة المزيد من الطلبات",
            maxLines: 2,
            softWrap: true,
            style: TextStyle(
                color: Colors.red, fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _headTextIcon() {
    return Row(
      children: <Widget>[
        Text(
          "طريقة الدفع",
          maxLines: 2,
          softWrap: true,
          style: TextStyle(
              color: Colors.red, fontSize: 12.0, fontWeight: FontWeight.bold),
        ),
//          SizedBox(),
        Icon(
          Icons.keyboard_arrow_down,
          color: Colors.red,
        ),
      ],
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

  Widget _btn() {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext context) {
            return _bttomContianer();
          },
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
          'اطلب الان',
          style: TextStyle(fontSize: 18, color: Colors.white),
        )),
      ),
    );
  }

  Widget _textField() {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 0, top: 8.0, bottom: 18.0),
      child: TextFormField(
        style: TextStyle(fontSize: 12.0, color: Color(0xFF8D8D8D)),
        decoration: InputDecoration(
          focusColor: Colors.transparent,
          contentPadding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 5.0),
          filled: true,
          fillColor: Color(0xFFE2E3E3),
          enabledBorder: OutlineInputBorder(
            borderSide: new BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(13.0),
          ),
          hintText: 'بحث',
          prefixIcon: Container(
              margin: EdgeInsets.all(8.0),
              padding: EdgeInsets.only(
                  top: 8.0, bottom: 8.0, right: 18.0, left: 18.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13.0),
                color: Color(0xff0c2444),
              ),
              child: Text(
                'فيزا',
                style: TextStyle(
                  color: Color(0xFFE2E3E3),
                ),
              )),
          suffixIcon: Container(
            margin: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              color: Color(0xff0c2444),
            ),
            child: Icon(
              Icons.check,
              color: Color(0xFFE2E3E3),
            ),
          ),
        ),
      ),
    );
  }

  Widget _textFieldLeft() {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 18.0),
      child: TextFormField(
        style: TextStyle(fontSize: 12.0, color: Color(0xFF8D8D8D)),
        decoration: InputDecoration(
          focusColor: Colors.transparent,
          contentPadding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 5.0),
          filled: true,
          fillColor: Color(0xFFE2E3E3),
          enabledBorder: OutlineInputBorder(
            borderSide: new BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(13.0),
          ),
          hintText: 'كود الخصم',
          hintStyle: TextStyle(
            color: Color(0xff0c2444),
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
          suffixIcon: GestureDetector(
            onTap: () {},
            child: Container(
                margin: EdgeInsets.all(8.0),
                padding: EdgeInsets.only(
                    top: 8.0, bottom: 8.0, right: 18.0, left: 18.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13.0),
                  color: Color(0xff0c2444),
                ),
                child: Text(
                  'تفعيل',
                  style: TextStyle(
                    color: Color(0xFFE2E3E3),
                  ),
                )),
          ),
        ),
      ),
    );
  }

  Widget _bttomContianer() {
    return Container(
//      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50), topRight: Radius.circular(50)),
        color: Colors.white,
      ),

      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Image.asset(
                        "assets/img/Vector-28.png",
                        fit: BoxFit.fill,
                        height: 130,
                        width: 130,
                      ),
                      Text(
                        'تم الطلب بنجاح!',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF0C2444),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "يمكنك الان تتبع طلبك",
                        maxLines: 2,
                        softWrap: true,
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FollowOrder()),
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
                    'تتبع طلبك  ',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
                ),
              ),
            ),
            _barBottom()
          ],
        ),
      ),
    );
  }
}
