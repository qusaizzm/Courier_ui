import 'package:flutter/material.dart';

class ListDreviry extends StatelessWidget {
  // final IconData icon;
  final String title;
  final Function onTap;
  final AssetImage img;
  // final String txt;
  // final bool btn;

  const ListDreviry({
    // @required this.icon,
    @required this.img,
    @required this.title,
    @required this.onTap,
    // @required this.btn = true,
    // @required this.clear
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Stack(
          children: [
            Positioned(
              child: Opacity(
                opacity: 0.6,
                child: Container(
                  margin: EdgeInsets.only(top: 8.0, left: 4.0, right: 4.0),
                  padding: EdgeInsets.all(8.0),

                  height: 130.0,

                  decoration: BoxDecoration(
                    image: DecorationImage(image: img, fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(22.0),
                    color: Colors.red, //0xffe2e3e3
                  ),
                  //
                ),
              ),
            ),
            Positioned(
              top: 88,
              right: 15,
              child: Container(
                width: 110,
                decoration: BoxDecoration(
                  boxShadow: kElevationToShadow[2],
                ),
                child: Text(
                  title,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
