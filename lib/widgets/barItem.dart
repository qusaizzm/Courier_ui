import 'package:flutter/material.dart';
import 'package:new_app/constants.dart';

class BarItem extends StatelessWidget {
  final IconData iconItem;
  final String menuTitleItem;
  final Function pressItem;
  final bool isActiveItem;

  const BarItem({
    Key key,
    @required this.iconItem,
    @required this.menuTitleItem,
    @required this.pressItem,
    this.isActiveItem = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size / 2;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      height: 80,
      child: GestureDetector(
        onTap: pressItem,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconItem,
              color: isActiveItem ? redColor : blueColor,
            ),
            Text(
              menuTitleItem,
              style: TextStyle(
                color: isActiveItem ? redColor : blueColor,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
