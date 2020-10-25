import 'package:flutter/material.dart';

class CardNav extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function press;
  final Function clear;
  final String txt;
  final bool btn;

  const CardNav(
      {Key key,
      @required this.icon,
      @required this.txt,
      @required this.title,
      @required this.press,
      this.btn = true,
      @required this.clear})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      // color: Colors.white,S

      width: MediaQuery.of(context).size.width,
      height: 140.0,
      child: Stack(children: [
        Positioned(
          child: Container(
            padding: EdgeInsets.only(left: 10, right: 8.0),
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            height: 90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(icon),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(txt)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, right: 4.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: clear,
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
        btn
            ? Positioned(
                top: 60.0,
                right: 180.0,
                child: _btn(),
              )
            : Container(),
      ]),
    );
  }

  Widget _btn() {
    return GestureDetector(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.0),
          color: Color(0xFF0C2444),
        ),
        child: Center(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Text(
              'عرض',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
