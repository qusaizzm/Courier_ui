import 'package:flutter/material.dart';

class EmptyCart extends StatefulWidget {
  @override
  _EmptyCartState createState() => _EmptyCartState();
}

class _EmptyCartState extends State<EmptyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Image.asset(
                      "assets/img/Vector-27.png",
                      fit: BoxFit.fitWidth,
                      height: 400,
                      width: 200,
                    ),
                    Text(
                      'السلة الان فارغه',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF0C2444),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "إجعل السلة سعيده و إطلب الان",
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
        ),
      ),
      bottomNavigationBar: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _barBottom(),
            ],
          ),
        ),
//        notchedShape: CircularNotchedRectangle(),
        color: Colors.transparent,
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
