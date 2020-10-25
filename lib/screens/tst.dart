import 'package:flutter/material.dart';
import 'package:new_app/screens/login.dart';

class TestWedget extends StatefulWidget {
  @override
  _TestWedgetState createState() => _TestWedgetState();
}

class _TestWedgetState extends State<TestWedget> with SingleTickerProviderStateMixin {
  // Set the initial position to something that will be offscreen for sure
  Tween<Offset> tween = Tween<Offset>(
    begin: Offset(0.0, 10000.0),
    end: Offset(0.0, 0.0),
  );
  Animation<Offset> animation;
  AnimationController animationController;

  GlobalKey _widgetKey = GlobalKey();

  @override
  void initState() {
    super.initState();

    // initialize animation controller and the animation itself
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    animation = tween.animate(animationController);

    Future<void>.delayed(Duration(seconds: 1), () {
      // Get the screen size
      final Size screenSize = MediaQuery.of(context).size;
      // Get render box of the widget
      final RenderBox widgetRenderBox =
          _widgetKey.currentContext.findRenderObject();
      // Get widget's size
      final Size widgetSize = widgetRenderBox.size;

      // Calculate the dy offset.
      // We divide the screen height by 2 because the initial position of the widget is centered.
      // Ceil the value, so we get a position that is a bit lower the bottom edge of the screen.
      final double offset = (screenSize.height / 2 / widgetSize.height).ceilToDouble();

      // Re-set the tween and animation
      tween = Tween<Offset>(
        begin: Offset(0.0, offset),
        end: Offset(0.0, 0.0),
      );
      animation = tween.animate(animationController);

      // Call set state to re-render the widget with the new position.
      this.setState((){
        // Animate it.
        animationController.forward();
      });
    });
  }

  @override
  void dispose() {
    // Don't forget to dispose the animation controller on class destruction
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      fit: StackFit.loose,
      children: <Widget>[
        SlideTransition(
          position: animation,
          child:_bottomBavBar(),
          //  CircleAvatar(
          //   key: _widgetKey,
          //   backgroundImage: AssetImage("assets/img/spectra.jpg",),
          //   radius: 50.0,
          // ),
        ),
      ],
    );
  }
   Widget _bottomBavBar() {
   return Container(
      decoration: BoxDecoration(color: Colors.transparent),
      padding: EdgeInsets.only(left: 4.0, right: 4.0),
      //margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 2),
      height: MediaQuery.of(context).size.height / 10,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'لديك حساب مسبقا؟',
                style: TextStyle(color: Colors.grey, fontSize: 18.0),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Text(
                  'تسجيل الدخول',
                  style: TextStyle(color: Colors.red, fontSize: 18.0),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
            height: 5.0,
            width: 180.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Color(0xFF0C2444),
            ),
          )
        ],
      ),
    );
  }

}