import 'package:flutter/material.dart';
import 'package:portfolio/helpers/Globals.dart';
import 'package:portfolio/models/Project.dart';
import 'package:video_player/video_player.dart';
import 'dart:io';
import 'package:video_player_web/video_player_web.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProjectPopup extends StatefulWidget {
  Project project;
  ProjectPopup(this.project);
  @override
  _ProjectPopupState createState() => _ProjectPopupState(this.project);
}

class _ProjectPopupState extends State<ProjectPopup> {
  Project project;
  VideoPlayerController _controller;
  // VideoPlayerWeb web;

  _ProjectPopupState(this.project);

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(project.videoPath)
      ..initialize().then((value) {
        setState(() {});

        // _controller.setLooping(true);

        _controller.play();
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.pause();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: Container(
        color: Globals.black,
        width: ((Globals.width > Globals.height)
            ? Globals.width * 0.8
            : Globals.width * 0.95),
        height: ((Globals.width > Globals.height)
            ? Globals.height * 0.9
            : Globals.height * 0.95),
        padding: EdgeInsets.all(((Globals.width > Globals.height)
                ? Globals.dwidth
                : Globals.dheight) *
            30),
        child: (Globals.width > Globals.height)
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: Globals.dwidth * 500,
                    // color: Colors.yellow,
                    child: Stack(
                      children: [
                        _controller.value.initialized
                            ? InkWell(
                                onTap: () {
                                  _controller.play();
                                },
                                child: Center(
                                  child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(40)),
                                      child: Transform.scale(
                                        scale: 0.89,
                                        child: AspectRatio(
                                            aspectRatio: 1080 / 2000,
                                            child: VideoPlayer(_controller)),
                                      )),
                                ),
                              )
                            : Container(),
                        Center(
                          child: Image.asset(
                            "assets/photos/iphone_skin.png",
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: Globals.dwidth * 500,
                    // color: Colors.yellow,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            project.title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: ((Globals.width > Globals.height)
                                        ? Globals.dwidth
                                        : Globals.dheight) *
                                    30,
                                color: Globals.white,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: Globals.dheight * 25),
                          Text(
                            project.summary,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: ((Globals.width > Globals.height)
                                        ? Globals.dwidth
                                        : Globals.dheight) *
                                    22,
                                color: Globals.white,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: Globals.dheight * 40),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                InkWell(
                                  customBorder: CircleBorder(),
                                  onTap: () async {
                                    await launch(project.githubLink);
                                  },
                                  child: FaIcon(
                                    FontAwesomeIcons.github,
                                    color: Colors.white,
                                    size: ((Globals.width > Globals.height)
                                            ? Globals.dwidth
                                            : Globals.dheight) *
                                        40,
                                  ),
                                ),
                                InkWell(
                                  customBorder: CircleBorder(),
                                  onTap: () async {
                                    await launch(project.playStoreLink);
                                  },
                                  child: FaIcon(
                                    FontAwesomeIcons.googlePlay,
                                    color: Colors.white,
                                    size: ((Globals.width > Globals.height)
                                            ? Globals.dwidth
                                            : Globals.dheight) *
                                        40,
                                  ),
                                ),
                                InkWell(
                                  customBorder: CircleBorder(),
                                  onTap: () async {
                                    await launch(project.miscLink);
                                  },
                                  child: FaIcon(
                                    FontAwesomeIcons.link,
                                    color: Colors.white,
                                    size: ((Globals.width > Globals.height)
                                            ? Globals.dwidth
                                            : Globals.dheight) *
                                        40,
                                  ),
                                ),
                              ])
                        ],
                      ),
                    ),
                  ),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: Globals.dheight * 600,
                    // color: Colors.yellow,
                    child: Stack(
                      children: [
                        _controller.value.initialized
                            ? InkWell(
                                onTap: () {
                                  _controller.play();
                                },
                                child: Center(
                                  child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(40)),
                                      child: Transform.scale(
                                        scale: 0.89,
                                        child: AspectRatio(
                                            aspectRatio: 1080 / 2000,
                                            child: VideoPlayer(_controller)),
                                      )),
                                ),
                              )
                            : Container(),
                        Center(
                          child: Image.asset(
                            "assets/photos/iphone_skin.png",
                            fit: BoxFit.fitHeight,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                        ),
                      ],
                    ),

                    // Image.asset(
                    //   "assets/photos/iphone_skin.png",
                    //   fit: BoxFit.fitHeight,
                    //   width: double.infinity,
                    //   height: double.infinity,
                    // ),
                  ),
                  Container(
                    // height: Globals.dheight * 200,
                    // color: Colors.yellow,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            project.title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: ((Globals.width > Globals.height)
                                        ? Globals.dwidth
                                        : Globals.dheight) *
                                    22,
                                color: Globals.white,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: Globals.dheight * 17),
                          Text(
                            project.summary,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: ((Globals.width > Globals.height)
                                        ? Globals.dwidth
                                        : Globals.dheight) *
                                    14,
                                color: Globals.white,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: Globals.dheight * 32),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                InkWell(
                                  customBorder: CircleBorder(),
                                  onTap: () async {
                                    await launch(project.githubLink);
                                  },
                                  child: FaIcon(
                                    FontAwesomeIcons.github,
                                    color: Colors.white,
                                    size: ((Globals.width > Globals.height)
                                            ? Globals.dwidth
                                            : Globals.dheight) *
                                        32,
                                  ),
                                ),
                                InkWell(
                                  customBorder: CircleBorder(),
                                  onTap: () async {
                                    await launch(project.playStoreLink);
                                  },
                                  child: FaIcon(
                                    FontAwesomeIcons.googlePlay,
                                    color: Colors.white,
                                    size: ((Globals.width > Globals.height)
                                            ? Globals.dwidth
                                            : Globals.dheight) *
                                        32,
                                  ),
                                ),
                                InkWell(
                                  customBorder: CircleBorder(),
                                  onTap: () async {
                                    await launch(project.miscLink);
                                  },
                                  child: FaIcon(
                                    FontAwesomeIcons.link,
                                    color: Colors.white,
                                    size: ((Globals.width > Globals.height)
                                            ? Globals.dwidth
                                            : Globals.dheight) *
                                        32,
                                  ),
                                ),
                              ])
                        ],
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
