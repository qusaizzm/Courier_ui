import 'package:flutter/material.dart';
import 'package:new_app/constants.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  bool _folded = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flex(
        direction: Axis.horizontal,
        children: [
          AnimatedContainer(
            // padding: EdgeInsets.symmetric( horizontal:  ) ,
            // margin: EdgeInsets.only( left : 10 ),
            duration: Duration(milliseconds: 400),
            width: _folded ? 56 : MediaQuery.of(context).size.width,
            height: 56,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: _folded ? Colors.transparent : Colors.white,
              boxShadow:
                  _folded ? kElevationToShadow[0] : kElevationToShadow[6],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      // margin:EdgeInsets.all(16),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Center(
                        child: !_folded
                            ? TextField(
                                decoration: InputDecoration(
                                    labelText: "Search",
                                    // alignLabelWithHint: TextAlign.center,
                                    labelStyle: TextStyle(
                                      color: blueColor,
                                    ),
                                    border: InputBorder.none),
                              )
                            : null,
                      ),
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 400),
                  child: Container(
                    child: Material(
                      type: MaterialType.transparency,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            _folded = !_folded;
                          });
                        },
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(_folded ? 32 : 0),
                          topRight: Radius.circular(32),
                          bottomLeft: Radius.circular(_folded ? 32 : 0),
                          bottomRight: Radius.circular(32),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Icon(
                            _folded ? Icons.search : Icons.close,
                            color: blueColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
