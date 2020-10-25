import 'package:flutter/material.dart';
import 'package:new_app/screens/auto_chat.dart';
class ContectUs extends StatefulWidget {
  @override
  _ContectUsState createState() => _ContectUsState();
}

class _ContectUsState extends State<ContectUs> {
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
        title: Text(
          'تواصل معنا',
          style: TextStyle(
              color: Color(0xffD91F26),
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Cairo'),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 0, 12.0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.email),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'تويتر',
                        style: TextStyle(
                            color: Color(0xffD91F26),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Cairo'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 0, 12.0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.email),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'البريد الالكتروني',
                        style: TextStyle(
                            color: Color(0xffD91F26),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Cairo'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 0, 12.0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.email),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'فيسبوك',
                        style: TextStyle(
                            color: Color(0xffD91F26),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Cairo'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 0, 12.0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.email),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'انستغرام',
                        style: TextStyle(
                            color: Color(0xffD91F26),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Cairo'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              _btn()
            ],
          ),
        ),
      ),
    );
  }

Widget _btn() {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AutoChat()),
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
        'المساعده',
        style:
            TextStyle(fontSize: 18, color: Colors.white, fontFamily: 'Cairo'),
      )),
    ),
  );
}
}
