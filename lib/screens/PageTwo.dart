import 'package:flutter/material.dart';
import 'package:portfolio/helpers/Globals.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        Container(
          width: Globals.width,
          height: Globals.height * 0.4,
          decoration: BoxDecoration(
              color: Globals.violet,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60))),
          child: Center(
            child: Container(
              width: Globals.width * 0.5,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  FaIcon(
                    FontAwesomeIcons.handPaper,
                    size: ((Globals.width > Globals.height)
                            ? Globals.dwidth
                            : Globals.dheight) *
                        80,
                    color: Globals.white,
                  ),
                  SizedBox(
                      height: ((Globals.width > Globals.height)
                              ? Globals.dwidth
                              : Globals.dheight) *
                          24),
                  Text(
                    "I'm James. It's nice meeting you.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: ((Globals.width > Globals.height)
                                ? Globals.dwidth
                                : Globals.dheight) *
                            36,
                        color: Globals.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: Globals.dheight * 24),
                  Text(
                    "I am James Casia. I’m a hobbyist software developer who loves joining Hackathons, Software Development Competitions, and creating beautiful yet responsive software. I am currently a College sophomore.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: ((Globals.width > Globals.height)
                                ? Globals.dwidth
                                : Globals.dheight) *
                            22,
                        color: Globals.white,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
          ),
        ),
        Center(
          child: Flex(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              direction: (Globals.width > Globals.height)
                  ? Axis.horizontal
                  : Axis.vertical,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: ((Globals.width > Globals.height)
                                ? Globals.dwidth
                                : Globals.dheight) *
                            60),
                    width: (Globals.width > Globals.height)
                        ? Globals.width * 0.25
                        : Globals.width * 0.8,
                    height: Globals.height * 0.5,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                              height: ((Globals.width > Globals.height)
                                      ? Globals.dwidth
                                      : Globals.dheight) *
                                  40),
                          FaIcon(
                            FontAwesomeIcons.pencilRuler,
                            color: Globals.violet,
                            size: ((Globals.width > Globals.height)
                                    ? Globals.dwidth
                                    : Globals.dheight) *
                                60,
                          ),
                          SizedBox(
                              height: ((Globals.width > Globals.height)
                                      ? Globals.dwidth
                                      : Globals.dheight) *
                                  40),
                          Column(
                            children: <Widget>[
                              Text(
                                "Designer",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: ((Globals.width > Globals.height)
                                            ? Globals.dwidth
                                            : Globals.dheight) *
                                        26,
                                    color: Globals.white,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                  height: ((Globals.width > Globals.height)
                                          ? Globals.dwidth
                                          : Globals.dheight) *
                                      10),
                              Text(
                                "I design beautiful,and easy to use User Interfaces",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: ((Globals.width > Globals.height)
                                            ? Globals.dwidth
                                            : Globals.dheight) *
                                        22,
                                    color: Globals.white,
                                    fontWeight: FontWeight.w300),
                              )
                            ],
                          ),
                          SizedBox(
                              height: ((Globals.width > Globals.height)
                                      ? Globals.dwidth
                                      : Globals.dheight) *
                                  60),
                          Column(
                            children: <Widget>[
                              Text(
                                "Tools I use:",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: ((Globals.width > Globals.height)
                                            ? Globals.dwidth
                                            : Globals.dheight) *
                                        26,
                                    color: Globals.lightVioletOutline,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                  height: ((Globals.width > Globals.height)
                                          ? Globals.dwidth
                                          : Globals.dheight) *
                                      10),
                              Text(
                                "Adobe XD\nAdobe Illustrator",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: ((Globals.width > Globals.height)
                                            ? Globals.dwidth
                                            : Globals.dheight) *
                                        22,
                                    color: Globals.white,
                                    fontWeight: FontWeight.w300),
                              )
                            ],
                          ),
                        ]),
                  ),
                ),
                // Divider(
                //     thickness: ((Globals.width > Globals.height)
                //             ? Globals.dwidth
                //             : Globals.dheight) *
                //         0.5,
                //     height: Globals.height,
                //     color: Colors.grey[700]),
                Flexible(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: ((Globals.width > Globals.height)
                                ? Globals.dwidth
                                : Globals.dheight) *
                            60),
                    width: (Globals.width > Globals.height)
                        ? Globals.width * 0.25
                        : Globals.width * 0.8,
                    height: Globals.height * 0.5,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                              height: ((Globals.width > Globals.height)
                                      ? Globals.dwidth
                                      : Globals.dheight) *
                                  40),
                          FaIcon(
                            FontAwesomeIcons.hardHat,
                            color: Globals.violet,
                            size: ((Globals.width > Globals.height)
                                    ? Globals.dwidth
                                    : Globals.dheight) *
                                60,
                          ),
                          SizedBox(
                              height: ((Globals.width > Globals.height)
                                      ? Globals.dwidth
                                      : Globals.dheight) *
                                  40),
                          Column(
                            children: <Widget>[
                              Text(
                                "Developer",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: ((Globals.width > Globals.height)
                                            ? Globals.dwidth
                                            : Globals.dheight) *
                                        26,
                                    color: Globals.white,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                  height: ((Globals.width > Globals.height)
                                          ? Globals.dwidth
                                          : Globals.dheight) *
                                      10),
                              Text(
                                "I breathe to life  even the most ambitious\ndesigns",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: ((Globals.width > Globals.height)
                                            ? Globals.dwidth
                                            : Globals.dheight) *
                                        22,
                                    color: Globals.white,
                                    fontWeight: FontWeight.w300),
                              )
                            ],
                          ),
                          SizedBox(
                              height: ((Globals.width > Globals.height)
                                      ? Globals.dwidth
                                      : Globals.dheight) *
                                  60),
                          Column(
                            children: <Widget>[
                              Text(
                                "Arsenal:",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: ((Globals.width > Globals.height)
                                            ? Globals.dwidth
                                            : Globals.dheight) *
                                        26,
                                    color: Globals.lightVioletOutline,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                  height: ((Globals.width > Globals.height)
                                          ? Globals.dwidth
                                          : Globals.dheight) *
                                      10),
                              Text(
                                "Flutter,Dart\nAndroid Studio, Java",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: ((Globals.width > Globals.height)
                                            ? Globals.dwidth
                                            : Globals.dheight) *
                                        22,
                                    color: Globals.white,
                                    fontWeight: FontWeight.w300),
                              )
                            ],
                          ),
                        ]),
                  ),
                ),
                // Divider(
                //     thickness: ((Globals.width > Globals.height)
                //             ? Globals.dwidth
                //             : Globals.dheight) *
                //         0.5,
                //     height: Globals.height,
                //     color: Colors.grey[700]),
                Flexible(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: ((Globals.width > Globals.height)
                                ? Globals.dwidth
                                : Globals.dheight) *
                            60),
                    width: (Globals.width > Globals.height)
                        ? Globals.width * 0.25
                        : Globals.width * 0.8,
                    height: Globals.height * 0.5,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                              height: ((Globals.width > Globals.height)
                                      ? Globals.dwidth
                                      : Globals.dheight) *
                                  40),
                          FaIcon(
                            FontAwesomeIcons.search,
                            color: Globals.violet,
                            size: ((Globals.width > Globals.height)
                                    ? Globals.dwidth
                                    : Globals.dheight) *
                                60,
                          ),
                          SizedBox(
                              height: ((Globals.width > Globals.height)
                                      ? Globals.dwidth
                                      : Globals.dheight) *
                                  40),
                          Column(
                            children: <Widget>[
                              Text(
                                "Explorer",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: ((Globals.width > Globals.height)
                                            ? Globals.dwidth
                                            : Globals.dheight) *
                                        26,
                                    color: Globals.white,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                  height: ((Globals.width > Globals.height)
                                          ? Globals.dwidth
                                          : Globals.dheight) *
                                      10),
                              Text(
                                "I am naturally curious and explore the latest technologies.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: ((Globals.width > Globals.height)
                                            ? Globals.dwidth
                                            : Globals.dheight) *
                                        22,
                                    color: Globals.white,
                                    fontWeight: FontWeight.w300),
                              )
                            ],
                          ),
                          SizedBox(
                              height: ((Globals.width > Globals.height)
                                      ? Globals.dwidth
                                      : Globals.dheight) *
                                  60),
                          Column(
                            children: <Widget>[
                              Text(
                                "Tech I employ:",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: ((Globals.width > Globals.height)
                                            ? Globals.dwidth
                                            : Globals.dheight) *
                                        26,
                                    color: Globals.lightVioletOutline,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                  height: ((Globals.width > Globals.height)
                                          ? Globals.dwidth
                                          : Globals.dheight) *
                                      10),
                              Text(
                                "Machine Learning\nBlockchain",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: ((Globals.width > Globals.height)
                                            ? Globals.dwidth
                                            : Globals.dheight) *
                                        22,
                                    color: Globals.white,
                                    fontWeight: FontWeight.w300),
                              )
                            ],
                          ),
                        ]),
                  ),
                ),
              ]),
        ),
      ],
    );
  }
}
