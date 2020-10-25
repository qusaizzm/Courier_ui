import 'package:new_app/screens/home.dart';
import 'package:flutter/material.dart';

class FollowOrder extends StatefulWidget {
  @override
  _FollowOrderState createState() => _FollowOrderState();
}

class _FollowOrderState extends State<FollowOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            'اتبع طلبك',
            style: TextStyle(
                color: Color(0xffD91F26),
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Cairo'),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                'الوقت المتبقي للوصول',
                style: TextStyle(
                    color: Color(0xFF0C2444),
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo'),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                'دقائق 5:00',
                style: TextStyle(
                    color: Color(0xffD91F26),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo'),
              ),
            ),
            Expanded(
              child: Image.asset(
                "assets/img/loca.PNG",

                // MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
