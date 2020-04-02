import 'package:flutter/material.dart';
import '../helpers/Globals.dart';

import 'package:flutter/services.dart';
import './PageOne.dart';
import './PageTwo.dart';
import './PageThree.dart';
import './PageFour.dart';
import './PageFive.dart';

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double safePadding = 0;
  @override
  Widget build(BuildContext context) {
    Globals.dheight = MediaQuery.of(context).size.height / 981;
    Globals.dwidth = MediaQuery.of(context).size.width / 1873;
    Globals.height = MediaQuery.of(context).size.height;
    Globals.width = MediaQuery.of(context).size.width;
    return SafeArea(child: LayoutBuilder(builder: (context, constraints) {
      safePadding = Globals.height - constraints.maxHeight;
      Globals.height = constraints.maxHeight;
      Globals.width = constraints.maxWidth;
      print(Globals.height);
      print(Globals.width);
      return Material(
        child: Scaffold(
            body: Container(
          width: Globals.width,
          height: Globals.height,
          color: Globals.black,
          child: SingleChildScrollView(
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
        )),
      );
    }));
  }
}
