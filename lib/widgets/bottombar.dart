import 'package:flutter/material.dart';
import 'package:new_app/screens/home.dart';
import 'package:new_app/screens/menu.dart';
import 'package:new_app/screens/offers.dart';
import 'package:new_app/widgets/barItem.dart';

class BottomBar extends StatelessWidget {
  final bool proActive;
  final bool ofActive;
  final bool homeActive;

  const BottomBar({
    this.proActive = false,
    this.ofActive = false,
    this.homeActive = false,
  });
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size / 2;
    return Container(
       decoration: BoxDecoration(
          color: Color(0xFFFFFF2F2F2)
          
        ),
          child: Container(
        
         decoration: BoxDecoration(
          color: Color(0xFFf0eded),
           borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: BarItem(
                menuTitleItem: "الحساب",
                iconItem: Icons.person,
                isActiveItem: proActive,
                pressItem: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Menu()),
                  );
                },
              ),
            ),
            Expanded(
              child: BarItem(
                menuTitleItem: "العروض",
                isActiveItem: ofActive,
                iconItem: Icons.local_offer,
                pressItem: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OffersWidget()),
                  );
                },
                // isActiveItem: true,
              ),
            ),
            Expanded(
              child: BarItem(
                menuTitleItem: "الرئيسيه",
                iconItem: Icons.home,
                isActiveItem: homeActive,
                pressItem: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeWidget()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
