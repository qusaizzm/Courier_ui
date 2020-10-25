import 'package:flutter/material.dart';

class Soon extends StatefulWidget {
  @override
  _SoonState createState() => _SoonState();
}

class _SoonState extends State<Soon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text("hhhhhhh"),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              title: Text("item 1"),
              onTap: () {},
            ),
            ListTile(
              title: Text("item 1"),
              onTap: () {},
            )
          ],
        ),
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
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Center(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'لا توجد عروض متاحه !',
                          style: TextStyle(
                              color: Color(0xffD91F26),
                              fontSize: 32.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              right: 8, left: 8, top: 8, bottom: 8),
                          width: 250,
                          height: 400,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/img/gift.png"))),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
