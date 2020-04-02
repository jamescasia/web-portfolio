import 'package:flutter/material.dart';
import 'package:portfolio/helpers/Globals.dart';
import './ComposeMailDialog.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PageFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Globals.black,
      width: Globals.width,
      height: Globals.height * 0.6,
      child: Stack(
        children: <Widget>[
          Column(children: [
            Container(
                color: Globals.black,
                width: Globals.width,
                height: Globals.height * 0.2),
            Container(
              width: Globals.width,
              height: Globals.height * 0.4,
              decoration: BoxDecoration(

              color: Globals.violet,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60))
              ),
              
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text(
                  "Made with passion ❤️ \n",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: Globals.dwidth * 24,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: Globals.dwidth * 20),
                Container(
                  width: Globals.width * 0.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      InkWell(
                        customBorder: CircleBorder(),
                        onTap: () async {
                          await launch("https://github.com/jamescasia");
                        },
                        child: FaIcon(
                          FontAwesomeIcons.github,
                          color: Colors.white,
                          size: Globals.dwidth * 40,
                        ),
                      ),
                      InkWell(
                        customBorder: CircleBorder(),
                        onTap: () async {
                          await launch(
                              "https://www.instagram.com/jameeszyycashew/");
                        },
                        child: FaIcon(
                          FontAwesomeIcons.instagram,
                          color: Colors.white,
                          size: Globals.dwidth * 40,
                        ),
                      ),
                      InkWell(
                        customBorder: CircleBorder(),
                        onTap: () async {
                          await launch(
                              "https://stackoverflow.com/users/9577324/james-casia");
                        },
                        child: FaIcon(
                          FontAwesomeIcons.stackOverflow,
                          color: Colors.white,
                          size: Globals.dwidth * 40,
                        ),
                      ),
                      InkWell(
                        customBorder: CircleBorder(),
                        onTap: () async {
                          await launch(
                              "https://play.google.com/store/apps/dev?id=6109971440130385504&hl=en");
                        },
                        child: FaIcon(
                          FontAwesomeIcons.googlePlay,
                          color: Colors.white,
                          size: Globals.dwidth * 40,
                        ),
                      ),
                      InkWell(
                        customBorder: CircleBorder(),
                        onTap: () async {
                          await launch(
                              "https://www.linkedin.com/in/james-gabriel-casia-ba36b2168/");
                        },
                        child: FaIcon(
                          FontAwesomeIcons.linkedin,
                          color: Colors.white,
                          size: Globals.dwidth * 40,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Globals.dwidth * 40),
                InkWell(
                  onTap: () async {
                    await launch(
                        "https://github.com/fluttercommunity/font_awesome_flutter/blob/master/LICENSE.md");
                  },
                  child: Text(
                    "Icons by FontAwesome.",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: Globals.dwidth * 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    await launch("https://aetherapps.github.io/");
                  },
                  child: Text(
                    "Member of AetherApps",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: Globals.dwidth * 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  "(c) 2020 James Casia. All rights reserved.",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: Globals.dwidth * 16,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: Globals.dwidth * 20),
              ]),
            )
          ]),
          Positioned(
            bottom: Globals.height * 0.4 - Globals.dwidth * 110,
            child: Container(
              width: Globals.width,
              child: Center(
                child: Container(
                  width: Globals.width * 0.66,
                  height: Globals.dwidth * 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                    color: Globals.darkBlue,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "Let's work together!",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: Globals.dwidth * 36,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Been itching to create the\nworld's biggest idea?\nHit me up. I'm interested",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: Globals.dwidth * 20,
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.center,
                      ),
                      MaterialButton(
                        onPressed: () {
                          showGeneralDialog(
                              barrierColor: Colors.black.withOpacity(0.5),
                              transitionBuilder: (context, a1, a2, widget) {
                                return Transform.scale(
                                  scale: a1.value,
                                  child: Opacity(
                                      opacity: a1.value,
                                      child: ComposeMailDialog()),
                                );
                              },
                              transitionDuration: Duration(milliseconds: 200),
                              barrierDismissible: true,
                              barrierLabel: '',
                              context: context,
                              pageBuilder:
                                  (context, animation1, animation2) {});
                        },
                        height: Globals.dwidth * 60,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.white, width: 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(300))),
                        child: Text(
                          "  Let's go!  ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: Globals.dwidth * 22,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
