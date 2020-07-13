import 'package:flutter/material.dart';
import 'package:portfolio/helpers/Globals.dart';
import 'package:portfolio/helpers/HoverCard.dart';
import 'package:portfolio/models/AppData.dart';
import 'package:portfolio/models/Project.dart';
import 'package:portfolio/screens/ProjectPopup.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatefulWidget {
  Project project;
  ProjectCard(this.project);
  @override
  _ProjectCardState createState() => _ProjectCardState(project);
}

class _ProjectCardState extends State<ProjectCard> {
  Project project;
  _ProjectCardState(this.project);
  @override
  Widget build(BuildContext context) {
    return HoverCard(
        Stack(
          children: <Widget>[
            Image.asset(
              project.imagePath,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Positioned(
              bottom: ((Globals.width > Globals.height)
                      ? Globals.dwidth
                      : Globals.dheight) *
                  8,
              right: ((Globals.width > Globals.height)
                      ? Globals.dwidth
                      : Globals.dheight) *
                  8,
              child: InkWell(
                onTap: () {
                  showGeneralDialog(
                      barrierColor: Colors.black.withOpacity(0.5),
                      transitionBuilder: (context, a1, a2, widget) {
                        return Transform.scale(
                          scale: a1.value,
                          child: Opacity(
                              opacity: a1.value, child: ProjectPopup(project)),
                        );
                      },
                      transitionDuration: Duration(milliseconds: 200),
                      barrierDismissible: true,
                      barrierLabel: '',
                      context: context,
                      pageBuilder: (context, animation1, animation2) {});
                },
                child: RotationTransition(
                  turns: AlwaysStoppedAnimation(135 / 360),
                  child: FaIcon(
                    FontAwesomeIcons.arrowCircleUp,
                    color: Globals.darkBlue,
                    size: ((Globals.width > Globals.height)
                            ? Globals.dwidth
                            : Globals.dheight) *
                        50,
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                color: Globals.darkBlue,
                child: Padding(
                  padding: EdgeInsets.all(((Globals.width > Globals.height)
                          ? Globals.dwidth
                          : Globals.dheight) *
                      10),
                  child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          project.title,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: ((Globals.width > Globals.height)
                                      ? Globals.dwidth
                                      : Globals.dheight) *
                                  22,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                            height: ((Globals.width > Globals.height)
                                    ? Globals.dwidth
                                    : Globals.dheight) *
                                10),
                        Text(
                          project.summary,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: ((Globals.width > Globals.height)
                                      ? Globals.dwidth
                                      : Globals.dheight) *
                                  16,
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                            height: ((Globals.width > Globals.height)
                                    ? Globals.dwidth
                                    : Globals.dheight) *
                                15),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: <Widget>[
                        //     InkWell(
                        //       onTap: () async {
                        //         await launch(project.playStoreLink);
                        //       },
                        //       child: FaIcon(FontAwesomeIcons.googlePlay,
                        //           size: ((Globals.width > Globals.height)
                        //                   ? Globals.dwidth
                        //                   : Globals.dheight) *
                        //               30,
                        //           color: Globals.white),
                        //     ),
                        //     SizedBox(
                        //         width: ((Globals.width > Globals.height)
                        //                 ? Globals.dwidth
                        //                 : Globals.dheight) *
                        //             25),
                        //     InkWell(
                        //       onTap: () async {
                        //         await launch(project.miscLink);
                        //       },
                        //       child: FaIcon(FontAwesomeIcons.link,
                        //           size: ((Globals.width > Globals.height)
                        //                   ? Globals.dwidth
                        //                   : Globals.dheight) *
                        //               30,
                        //           color: Globals.white),
                        //     ),
                        //   ],
                        // )
                      ]),
                ),
              ),
              Positioned(
                bottom: ((Globals.width > Globals.height)
                        ? Globals.dwidth
                        : Globals.dheight) *
                    8,
                right: ((Globals.width > Globals.height)
                        ? Globals.dwidth
                        : Globals.dheight) *
                    8,
                child: InkWell(
                  onTap: () {
                    showGeneralDialog(
                        barrierColor: Colors.black.withOpacity(0.5),
                        transitionBuilder: (context, a1, a2, widget) {
                          return Transform.scale(
                            scale: a1.value,
                            child: Opacity(
                                opacity: a1.value,
                                child: ProjectPopup(project)),
                          );
                        },
                        transitionDuration: Duration(milliseconds: 200),
                        barrierDismissible: true,
                        barrierLabel: '',
                        context: context,
                        pageBuilder: (context, animation1, animation2) {});
                  },
                  child: RotationTransition(
                    turns: AlwaysStoppedAnimation(135 / 360),
                    child: FaIcon(
                      FontAwesomeIcons.arrowCircleUp,
                      color: Colors.white,
                      size: ((Globals.width > Globals.height)
                              ? Globals.dwidth
                              : Globals.dheight) *
                          50,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
