import 'package:flutter/material.dart';
import 'package:portfolio/helpers/Globals.dart';
import 'package:portfolio/helpers/HoverCard.dart';
import 'package:portfolio/helpers/HoverCard.dart';
import 'package:flip_card/flip_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:portfolio/models/AppData.dart';
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
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Flex(
                      direction: (Globals.height > Globals.width)
                          ? Axis.vertical
                          : Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        HoverCard(
                            Stack(
                              children: <Widget>[
                                Image.asset(
                                  "assets/photos/picnic_panic.png",
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: double.infinity,
                                ),
                                Positioned(
                                  bottom: 8,
                                  right: 8,
                                  child: InkWell(
                                    onTap: () {
                                      showGeneralDialog(
                                          barrierColor:
                                              Colors.black.withOpacity(0.5),
                                          transitionBuilder:
                                              (context, a1, a2, widget) {
                                            return Transform.scale(
                                              scale: a1.value,
                                              child: Opacity(
                                                  opacity: a1.value,
                                                  child: ProjectPopup(
                                                      AppData.projects[
                                                          "picnic-panic"])),
                                            );
                                          },
                                          transitionDuration:
                                              Duration(milliseconds: 200),
                                          barrierDismissible: true,
                                          barrierLabel: '',
                                          context: context,
                                          pageBuilder: (context, animation1,
                                              animation2) {});
                                    },
                                    child: RotationTransition(
                                      turns: AlwaysStoppedAnimation(135 / 360),
                                      child: FaIcon(
                                        FontAwesomeIcons.arrowCircleUp,
                                        color: Globals.darkBlue,
                                        size: 50,
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
                                      padding: EdgeInsets.all(
                                          ((Globals.width > Globals.height)
                                                  ? Globals.dwidth
                                                  : Globals.dheight) *
                                              10),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Picnic Panic!",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: ((Globals.width >
                                                              Globals.height)
                                                          ? Globals.dwidth
                                                          : Globals.dheight) *
                                                      22,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            SizedBox(
                                                height: ((Globals.width >
                                                            Globals.height)
                                                        ? Globals.dwidth
                                                        : Globals.dheight) *
                                                    10),
                                            Text(
                                              "Picnic Panic is an award-winning casual game that won Android Masters 2018 Game Category. It took me about 3 months to build. Visit it on the Google Play Store!",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: ((Globals.width >
                                                              Globals.height)
                                                          ? Globals.dwidth
                                                          : Globals.dheight) *
                                                      16,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                            SizedBox(
                                                height: ((Globals.width >
                                                            Globals.height)
                                                        ? Globals.dwidth
                                                        : Globals.dheight) *
                                                    15),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                InkWell(
                                                  onTap: () async {
                                                    await launch(
                                                        "https://play.google.com/store/apps/details?id=org.aetherapps.picnic.panic&hl=en");
                                                  },
                                                  child: FaIcon(
                                                      FontAwesomeIcons
                                                          .googlePlay,
                                                      size: ((Globals.width >
                                                                  Globals
                                                                      .height)
                                                              ? Globals.dwidth
                                                              : Globals
                                                                  .dheight) *
                                                          30,
                                                      color: Globals.white),
                                                ),
                                                SizedBox(
                                                    width: ((Globals.width >
                                                                Globals.height)
                                                            ? Globals.dwidth
                                                            : Globals.dheight) *
                                                        25),
                                                InkWell(
                                                  onTap: () async {
                                                    await launch(
                                                        "https://www.facebook.com/gdgphilippines/posts/1380215135443747");
                                                  },
                                                  child: FaIcon(
                                                      FontAwesomeIcons.link,
                                                      size: ((Globals.width >
                                                                  Globals
                                                                      .height)
                                                              ? Globals.dwidth
                                                              : Globals
                                                                  .dheight) *
                                                          30,
                                                      color: Globals.white),
                                                ),
                                              ],
                                            )
                                          ]),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 8,
                                    right: 8,
                                    child: InkWell(
                                      onTap: () {
                                        showGeneralDialog(
                                            barrierColor:
                                                Colors.black.withOpacity(0.5),
                                            transitionBuilder:
                                                (context, a1, a2, widget) {
                                              return Transform.scale(
                                                scale: a1.value,
                                                child: Opacity(
                                                    opacity: a1.value,
                                                    child: ProjectPopup(
                                                        AppData.projects[
                                                            "picnic-panic"])),
                                              );
                                            },
                                            transitionDuration:
                                                Duration(milliseconds: 200),
                                            barrierDismissible: true,
                                            barrierLabel: '',
                                            context: context,
                                            pageBuilder: (context, animation1,
                                                animation2) {});
                                      },
                                      child: RotationTransition(
                                        turns:
                                            AlwaysStoppedAnimation(135 / 360),
                                        child: FaIcon(
                                          FontAwesomeIcons.arrowCircleUp,
                                          color: Colors.white,
                                          size: 50,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        SizedBox(
                          width: ((Globals.width > Globals.height)
                                  ? Globals.dwidth
                                  : Globals.dheight) *
                              60,
                          height: ((Globals.width > Globals.height)
                                  ? Globals.dwidth
                                  : Globals.dheight) *
                              60,
                        ),
                        HoverCard(
                            Stack(
                              children: <Widget>[
                                Image.asset(
                                  "assets/photos/papyrus.png",
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: double.infinity,
                                ),
                              ],
                            ),
                            Container(
                              width: double.infinity,
                              height: double.infinity,
                              color: Globals.darkBlue,
                              child: Padding(
                                padding: EdgeInsets.all(
                                    ((Globals.width > Globals.height)
                                            ? Globals.dwidth
                                            : Globals.dheight) *
                                        10),
                                child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Papyrus-Digital Receipts",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: ((Globals.width >
                                                        Globals.height)
                                                    ? Globals.dwidth
                                                    : Globals.dheight) *
                                                22,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                          height:
                                              ((Globals.width > Globals.height)
                                                      ? Globals.dwidth
                                                      : Globals.dheight) *
                                                  10),
                                      Text(
                                        "Papyrus is a digital receipts and expense tracking app. This was our entry in Accenture's Program The Future 2019. Visit it on the Google Play Store!",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: ((Globals.width >
                                                        Globals.height)
                                                    ? Globals.dwidth
                                                    : Globals.dheight) *
                                                16,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      SizedBox(
                                          height:
                                              ((Globals.width > Globals.height)
                                                      ? Globals.dwidth
                                                      : Globals.dheight) *
                                                  15),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          InkWell(
                                            onTap: () async {
                                              await launch(
                                                  "https://play.google.com/store/apps/details?id=org.aetherapps.picnic.panic&hl=en");
                                            },
                                            child: FaIcon(
                                                FontAwesomeIcons.googlePlay,
                                                size: ((Globals.width >
                                                            Globals.height)
                                                        ? Globals.dwidth
                                                        : Globals.dheight) *
                                                    30,
                                                color: Globals.white),
                                          ),
                                          SizedBox(
                                              width: ((Globals.width >
                                                          Globals.height)
                                                      ? Globals.dwidth
                                                      : Globals.dheight) *
                                                  25),
                                          InkWell(
                                            onTap: () async {
                                              await launch(
                                                  "https://www.facebook.com/gdgphilippines/posts/1380215135443747");
                                            },
                                            child: FaIcon(FontAwesomeIcons.link,
                                                size: ((Globals.width >
                                                            Globals.height)
                                                        ? Globals.dwidth
                                                        : Globals.dheight) *
                                                    30,
                                                color: Globals.white),
                                          ),
                                        ],
                                      )
                                    ]),
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      width: ((Globals.width > Globals.height)
                              ? Globals.dwidth
                              : Globals.dheight) *
                          60,
                      height: ((Globals.width > Globals.height)
                              ? Globals.dwidth
                              : Globals.dheight) *
                          60,
                    ),
                    Flex(
                      direction: (Globals.height > Globals.width)
                          ? Axis.vertical
                          : Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        HoverCard(
                            Stack(
                              children: <Widget>[
                                Image.asset(
                                  "assets/photos/mentalert.png",
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: double.infinity,
                                ),
                              ],
                            ),
                            Container(
                              width: double.infinity,
                              height: double.infinity,
                              color: Globals.darkBlue,
                              child: Padding(
                                padding: EdgeInsets.all(
                                    ((Globals.width > Globals.height)
                                            ? Globals.dwidth
                                            : Globals.dheight) *
                                        10),
                                child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "MentAllerts",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: ((Globals.width >
                                                        Globals.height)
                                                    ? Globals.dwidth
                                                    : Globals.dheight) *
                                                22,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                          height:
                                              ((Globals.width > Globals.height)
                                                      ? Globals.dwidth
                                                      : Globals.dheight) *
                                                  10),
                                      Text(
                                        "MentAllerts is an award-winning app that utilizes Artificial Intelligence to predict the mental state of an individual based on tweets. This won 2nd place in the Alliance HackIT Challenge 2019.",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: ((Globals.width >
                                                        Globals.height)
                                                    ? Globals.dwidth
                                                    : Globals.dheight) *
                                                16,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      SizedBox(
                                          height:
                                              ((Globals.width > Globals.height)
                                                      ? Globals.dwidth
                                                      : Globals.dheight) *
                                                  15),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          InkWell(
                                            onTap: () async {
                                              await launch(
                                                  "https://play.google.com/store/apps/dev?id=6109971440130385504&hl=en");
                                            },
                                            child: FaIcon(
                                                FontAwesomeIcons.googlePlay,
                                                size: ((Globals.width >
                                                            Globals.height)
                                                        ? Globals.dwidth
                                                        : Globals.dheight) *
                                                    30,
                                                color: Globals.white),
                                          ),
                                          SizedBox(
                                              width: ((Globals.width >
                                                          Globals.height)
                                                      ? Globals.dwidth
                                                      : Globals.dheight) *
                                                  25),
                                          InkWell(
                                            onTap: () async {
                                              await launch(
                                                  "https://www.facebook.com/AllianceSoftwareInc/posts/2574799315966572");
                                            },
                                            child: FaIcon(FontAwesomeIcons.link,
                                                size: ((Globals.width >
                                                            Globals.height)
                                                        ? Globals.dwidth
                                                        : Globals.dheight) *
                                                    30,
                                                color: Globals.white),
                                          ),
                                        ],
                                      )
                                    ]),
                              ),
                            )),
                        SizedBox(
                          width: ((Globals.width > Globals.height)
                                  ? Globals.dwidth
                                  : Globals.dheight) *
                              60,
                          height: ((Globals.width > Globals.height)
                                  ? Globals.dwidth
                                  : Globals.dheight) *
                              60,
                        ),
                        HoverCard(
                            Stack(
                              children: <Widget>[
                                Image.asset(
                                  "assets/photos/color_flex.png",
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: double.infinity,
                                ),
                              ],
                            ),
                            Container(
                              width: double.infinity,
                              height: double.infinity,
                              color: Globals.darkBlue,
                              child: Padding(
                                padding: EdgeInsets.all(
                                    ((Globals.width > Globals.height)
                                            ? Globals.dwidth
                                            : Globals.dheight) *
                                        10),
                                child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Color Flex!",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: ((Globals.width >
                                                        Globals.height)
                                                    ? Globals.dwidth
                                                    : Globals.dheight) *
                                                22,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                          height:
                                              ((Globals.width > Globals.height)
                                                      ? Globals.dwidth
                                                      : Globals.dheight) *
                                                  10),
                                      Text(
                                        "Color Flex! is an award-winning casual game that qualified for Android Masters 2018. Visit it on the Google Play Store!",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: ((Globals.width >
                                                        Globals.height)
                                                    ? Globals.dwidth
                                                    : Globals.dheight) *
                                                16,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      SizedBox(
                                          height:
                                              ((Globals.width > Globals.height)
                                                      ? Globals.dwidth
                                                      : Globals.dheight) *
                                                  15),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          InkWell(
                                            onTap: () async {
                                              await launch(
                                                  "https://play.google.com/store/apps/dev?id=6109971440130385504&hl=en");
                                            },
                                            child: FaIcon(
                                                FontAwesomeIcons.googlePlay,
                                                size: ((Globals.width >
                                                            Globals.height)
                                                        ? Globals.dwidth
                                                        : Globals.dheight) *
                                                    30,
                                                color: Globals.white),
                                          ),
                                          SizedBox(
                                              width: ((Globals.width >
                                                          Globals.height)
                                                      ? Globals.dwidth
                                                      : Globals.dheight) *
                                                  25),
                                          InkWell(
                                            onTap: () async {
                                              await launch(
                                                  "https://www.facebook.com/gdgphilippines/posts/1367551843376743");
                                            },
                                            child: FaIcon(FontAwesomeIcons.link,
                                                size: ((Globals.width >
                                                            Globals.height)
                                                        ? Globals.dwidth
                                                        : Globals.dheight) *
                                                    30,
                                                color: Globals.white),
                                          ),
                                        ],
                                      )
                                    ]),
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      width: ((Globals.width > Globals.height)
                              ? Globals.dwidth
                              : Globals.dheight) *
                          60,
                      height: ((Globals.width > Globals.height)
                              ? Globals.dwidth
                              : Globals.dheight) *
                          60,
                    ),
                    Flex(
                      direction: (Globals.height > Globals.width)
                          ? Axis.vertical
                          : Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        HoverCard(
                            Stack(
                              children: <Widget>[
                                Image.asset(
                                  "assets/photos/esc_vel.png",
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: double.infinity,
                                ),
                              ],
                            ),
                            Container(
                              width: double.infinity,
                              height: double.infinity,
                              color: Globals.darkBlue,
                              child: Padding(
                                padding: EdgeInsets.all(
                                    ((Globals.width > Globals.height)
                                            ? Globals.dwidth
                                            : Globals.dheight) *
                                        10),
                                child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Escape Velocity",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: ((Globals.width >
                                                        Globals.height)
                                                    ? Globals.dwidth
                                                    : Globals.dheight) *
                                                22,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                          height:
                                              ((Globals.width > Globals.height)
                                                      ? Globals.dwidth
                                                      : Globals.dheight) *
                                                  10),
                                      Text(
                                        "Escape Velocity is a hyper-casual app with beautiful graphics and addictive gameplay. Visit on the Play Store!",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: ((Globals.width >
                                                        Globals.height)
                                                    ? Globals.dwidth
                                                    : Globals.dheight) *
                                                16,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      SizedBox(
                                          height:
                                              ((Globals.width > Globals.height)
                                                      ? Globals.dwidth
                                                      : Globals.dheight) *
                                                  15),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          InkWell(
                                            onTap: () async {
                                              await launch(
                                                  "https://play.google.com/store/apps/details?id=org.aetherapps.escape.velocity&hl=en");
                                            },
                                            child: FaIcon(
                                                FontAwesomeIcons.googlePlay,
                                                size: ((Globals.width >
                                                            Globals.height)
                                                        ? Globals.dwidth
                                                        : Globals.dheight) *
                                                    30,
                                                color: Globals.white),
                                          ),
                                          SizedBox(
                                              width: ((Globals.width >
                                                          Globals.height)
                                                      ? Globals.dwidth
                                                      : Globals.dheight) *
                                                  25),
                                          InkWell(
                                            onTap: () async {
                                              await launch(
                                                  "https://www.facebook.com/AllianceSoftwareInc/posts/2574799315966572");
                                            },
                                            child: FaIcon(FontAwesomeIcons.link,
                                                size: ((Globals.width >
                                                            Globals.height)
                                                        ? Globals.dwidth
                                                        : Globals.dheight) *
                                                    30,
                                                color: Globals.white),
                                          ),
                                        ],
                                      )
                                    ]),
                              ),
                            )),
                        SizedBox(
                          width: ((Globals.width > Globals.height)
                                  ? Globals.dwidth
                                  : Globals.dheight) *
                              60,
                          height: ((Globals.width > Globals.height)
                                  ? Globals.dwidth
                                  : Globals.dheight) *
                              60,
                        ),
                        HoverCard(
                            Container(
                              color: Colors.amber,
                              width: double.infinity,
                              height: double.infinity,
                              child: Center(
                                child: Text(
                                  "This\nPortfolio.",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize:
                                          ((Globals.width > Globals.height)
                                                  ? Globals.dwidth
                                                  : Globals.dheight) *
                                              60,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: double.infinity,
                              color: Globals.darkBlue,
                              child: Padding(
                                padding: EdgeInsets.all(
                                    ((Globals.width > Globals.height)
                                            ? Globals.dwidth
                                            : Globals.dheight) *
                                        10),
                                child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "This Portfolio.",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: ((Globals.width >
                                                        Globals.height)
                                                    ? Globals.dwidth
                                                    : Globals.dheight) *
                                                22,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                          height:
                                              ((Globals.width > Globals.height)
                                                      ? Globals.dwidth
                                                      : Globals.dheight) *
                                                  10),
                                      Text(
                                        "This is my first time trying out Flutter for web! Looking good so far!",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: ((Globals.width >
                                                        Globals.height)
                                                    ? Globals.dwidth
                                                    : Globals.dheight) *
                                                16,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      SizedBox(
                                          height:
                                              ((Globals.width > Globals.height)
                                                      ? Globals.dwidth
                                                      : Globals.dheight) *
                                                  15),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          SizedBox(
                                              width: ((Globals.width >
                                                          Globals.height)
                                                      ? Globals.dwidth
                                                      : Globals.dheight) *
                                                  25),
                                          InkWell(
                                            onTap: () async {
                                              // await launch(
                                              //     "https://www.facebook.com/gdgphilippines/posts/1367551843376743");
                                            },
                                            child: FaIcon(
                                                FontAwesomeIcons.heart,
                                                size: ((Globals.width >
                                                            Globals.height)
                                                        ? Globals.dwidth
                                                        : Globals.dheight) *
                                                    30,
                                                color: Globals.white),
                                          ),
                                        ],
                                      )
                                    ]),
                              ),
                            )),
                      ],
                    )
                  ],
                ),
              )
            ]),
      ],
    );
  }
}
