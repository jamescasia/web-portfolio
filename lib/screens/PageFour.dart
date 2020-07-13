import 'package:flutter/material.dart';
import 'package:portfolio/helpers/Globals.dart';
import 'package:portfolio/helpers/Grid.dart';
import 'package:portfolio/helpers/HoverCard.dart';
import 'package:portfolio/helpers/HoverCard.dart';
import 'package:flip_card/flip_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:portfolio/models/AppData.dart';
import 'package:portfolio/screens/ProjectCard.dart';
import 'package:portfolio/screens/ProjectPopup.dart';
import 'package:url_launcher/url_launcher.dart';

class PageFour extends StatefulWidget {
  @override
  _PageFourState createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                  height: ((Globals.width > Globals.height)
                          ? Globals.dwidth
                          : Globals.dheight) *
                      100),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  FaIcon(
                    FontAwesomeIcons.hammer,
                    size: ((Globals.width > Globals.height)
                            ? Globals.dwidth
                            : Globals.dheight) *
                        60,
                    color: Globals.white,
                  ),
                  SizedBox(
                      height: ((Globals.width > Globals.height)
                              ? Globals.dwidth
                              : Globals.dheight) *
                          24),
                  Text(
                    "Works I've done",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: ((Globals.width > Globals.height)
                                ? Globals.dwidth
                                : Globals.dheight) *
                            36,
                        color: Globals.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                      height: ((Globals.width > Globals.height)
                              ? Globals.dwidth
                              : Globals.dheight) *
                          24),
                  Text(
                    "These are the most notable works I've done so far.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: ((Globals.width > Globals.height)
                                ? Globals.dwidth
                                : Globals.dheight) *
                            22,
                        color: Globals.white,
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                      height: ((Globals.width > Globals.height)
                              ? Globals.dwidth
                              : Globals.dheight) *
                          100),
                ],
              ),
              // SizedBox(height: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 20),
              // Container(
              //   width: Globals.width * 0.6,
              //   height: Globals.height,
              //   child: GridView.count(
              //       primary: false,
              //       padding: const EdgeInsets.all(20),
              //       crossAxisSpacing: 10,
              //       mainAxisSpacing: 10,
              //       crossAxisCount: 2,
              //       children: AppData.projectList
              //           .map((p) => ProjectCard(p))
              //           .toList()),
              // ),

              // Column(
              //     mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     children:
              //         AppData.projectList.map((p) => ProjectCard(p)).toList()),

              Grid(
                horizontalSpace: ((Globals.width > Globals.height)
                        ? Globals.dwidth
                        : Globals.dheight) *
                    40,
                verticalSpace: ((Globals.width > Globals.height)
                        ? Globals.dwidth
                        : Globals.dheight) *
                    40,
                width: (Globals.width > Globals.height)
                    ? Globals.width * 0.6
                    : Globals.width * 0.9,
                children:
                    AppData.projectList.map((p) => ProjectCard(p)).toList(),
              )
            ]),
      ],
    );
  }
}
