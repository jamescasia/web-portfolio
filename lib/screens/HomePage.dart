import 'package:flutter/material.dart';
import '../helpers/Globals.dart';

import 'package:flutter/services.dart';
import './PageOne.dart';
import './PageTwo.dart';
import './PageThree.dart';
import './PageFour.dart';
import './PageFive.dart';
import 'package:flutter_web_scrollbar/flutter_web_scrollbar.dart';

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      title: "James Casia",
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _controller;
  @override
  void initState() {
    //Initialize the  scrollController
    _controller = ScrollController();
    super.initState();
  }

  void scrollCallBack(DragUpdateDetails dragUpdate) {
    setState(() {
      // Note: 3.5 represents the theoretical height of all my scrollable content. This number will vary for you.
      _controller.position.moveTo(dragUpdate.globalPosition.dy * 3.5);
    });
  }

  double safePadding = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: LayoutBuilder(builder: (context, constraints) {
      Globals.height = MediaQuery.of(context).size.height;
      safePadding = Globals.height - constraints.maxHeight;
      Globals.width = constraints.maxWidth;
      Globals.height = constraints.maxHeight;

      Globals.dheight = Globals.height / 981;
      Globals.dwidth = Globals.width / 1873;
      print(Globals.height);
      print(Globals.width);
      return Material(
        child: Scaffold(
            body: Stack(children: [
          Container(
            width: Globals.width,
            color: Globals.black,
            child: SingleChildScrollView(
              controller: _controller,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  PageOne(),
                  PageTwo(),
                  PageThree(),
                  PageFour(),
                  PageFive()
                ],
              ),
            ),
          ),
          FlutterWebScroller(
            //Pass a reference to the ScrollCallBack function into the scrollbar
            scrollCallBack,

            //Add optional values
            scrollBarBackgroundColor: Colors.white,
            scrollBarWidth: 20.0,
            dragHandleColor: Colors.grey,
            dragHandleBorderRadius: 2.0,
            dragHandleHeight: 40.0,
            dragHandleWidth: 15.0,
          ),
        ])),
      );
    }));
  }
}
