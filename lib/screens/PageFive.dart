import 'package:flutter/material.dart';
import 'package:portfolio/helpers/Globals.dart';
import './ComposeMailDialog.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PageFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Column(children: [
              Container(
                  color: Globals.black,
                  width: Globals.width,
                  height: Globals.height * 0.2),
              Container(
                width: Globals.width,
                height: (Globals.width>Globals.height) ? Globals.height * 0.4:Globals.height*0.5,
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
                        fontSize: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 24,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 20),
                  Container(
                    width:(Globals.width> Globals.height)? Globals.width * 0.3:Globals.width * 0.66 ,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        InkWell(
                          customBorder: CircleBorder(),
                          onTap: () async {
                            await launch("https://mail.google.com/mail/u/0/?view=cm&fs=1&to=wayperwayp@gmail.com&su=SUBJECT&body=BODY&tf=1");
                          },
                          child: FaIcon(
                            FontAwesomeIcons.envelope,
                            color: Colors.white,
                            size: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 40,
                          ),
                        ),
                        InkWell(
                          customBorder: CircleBorder(),
                          onTap: () async {
                            await launch("https://github.com/jamescasia");
                          },
                          child: FaIcon(
                            FontAwesomeIcons.github,
                            color: Colors.white,
                            size: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 40,
                          ),
                        ),
                        InkWell(
                          customBorder: CircleBorder(),
                          onTap: () async {
                            await launch(
                                "https://www.hackerrank.com/liquidN1tr0");
                          },
                          child: FaIcon(
                            FontAwesomeIcons.hackerrank,
                            color: Colors.white,
                            size: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 40,
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
                            size: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 40,
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
                            size: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 40,
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
                            size: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 40,
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
                            size: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 40),
                  InkWell(
                    onTap: () async {
                      await launch(
                          "https://github.com/fluttercommunity/font_awesome_flutter/blob/master/LICENSE.md");
                    },
                    child: Text(
                      "Icons by FontAwesome.",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 16,
                          fontWeight: FontWeight.w400),
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
                          fontSize: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Text(
                    "(c) 2020 James Casia. All rights reserved.",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 16,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 20),
                ]),
              )
            ]),
            Positioned(
              bottom: Globals.height * 0.4 - ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 110,
              child: Container(
                width: Globals.width,
                child: Center(
                  child: (Globals.width> Globals.height)?Container(
                    width: Globals.width * 0.66,
                    height: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 220,
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
                              fontSize: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 36,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Been itching to create the\nworld's biggest idea?\nHit me up. I'm interested",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 20,
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
                          height: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 60,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(300))),
                          child: Text(
                            "  Let's go!  ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 22,
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  ):Container(
                    width: Globals.width * 0.75,
                    height: Globals.height*0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      color: Globals.darkBlue,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "Let's work together!",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 36,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Been itching to create the\nworld's biggest idea?\nHit me up. I'm interested",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 20,
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
                          height: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 60,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(300))),
                          child: Text(
                            "  Let's go!  ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 22,
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
      ],
    );
  }
}
