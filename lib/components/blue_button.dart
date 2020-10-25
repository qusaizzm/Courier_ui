import 'package:flutter/material.dart';
import 'package:new_app/constants.dart';
import 'package:new_app/styleguide/text_styles.dart';

class BlueButton extends StatefulWidget {
  const BlueButton({
    this.txt,
    this.onClick,
    Key key,
  }) : super(key: key);

  final String txt;
  final onClick;
  @override
  _BlueButtonState createState() => _BlueButtonState();
}

class _BlueButtonState extends State<BlueButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onClick,
      child: Container(
        padding:
            EdgeInsets.only(top: 8.0, bottom: 8.0, left: 18.0, right: 18.0),
        //height: 60.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: blueColor,
        ),
        child: Center(child: Text(widget.txt, style: normalWhiteStyle)),
      ),
    );
  }
}
