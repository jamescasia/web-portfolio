import 'package:flutter/material.dart';
import 'package:portfolio/helpers/Globals.dart';
import 'package:portfolio/helpers/HoverCard.dart';
import 'package:portfolio/helpers/HoverCard.dart';
import 'package:flip_card/flip_card.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class PageThree extends StatefulWidget {
  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 100),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  FaIcon(
                    FontAwesomeIcons.trophy,
                    size: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 60,
                    color: Globals.white,
                  ),
                  SizedBox(height: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 24),
                  Text(
                    "Achievements",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 36,
                        color: Globals.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 24),
                  Text(
                    "Things I have achieved over the years that I am proud of.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 22,
                        color: Globals.white,
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(height: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 100),
                ],
              ),
              // SizedBox(height: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 20),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Flex(
                      mainAxisSize: MainAxisSize.min,
                      direction: (Globals.height > Globals.width)
                          ? Axis.vertical
                          : Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: HoverCard(
                              Stack(
                                children: <Widget>[
                                  Image.asset(
                                    "assets/photos/android_masters.jpg",
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: double.infinity,
                                  ),
                                  Positioned(
                                    right: 20,
                                    bottom: 20,
                                    child: Text(
                                      "Android Masters 2018\nGrand Champion",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 22,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                color: Globals.darkBlue,
                                width: double.infinity,
                                height: double.infinity,
                                child: InkWell(
                                  onTap: () async {
                                    print("tapped");
                                    await launch(
                                        "https://androidmasters.eclaro.gdgph.org/");
                                  },
                                  child: Padding(
                                    padding:
                                        EdgeInsets.all(((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 10),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Android masters 2018",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize:
                                                    ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 22,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                              height: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 10),
                                          Text(
                                            "Joined Google’s Android Masters 2018, national Game and App Development Competition, with hundreds of participating schools all over the country, and became the Grand Champion",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize:
                                                    ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 16,
                                                fontWeight: FontWeight.w300),
                                          ),
                                          SizedBox(
                                              height: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 5),
                                          FaIcon(FontAwesomeIcons.link,
                                              size: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 30,
                                              color: Globals.white)
                                        ]),
                                  ),
                                ),
                              )),
                        ),
                        SizedBox(
                          width: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 60,
                          height: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 60,
                        ),
                        Flexible(
                          flex: 1,
                          child: HoverCard(
                            Stack(
                              children: <Widget>[
                                Image.asset(
                                  "assets/photos/ptf.jpg",
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: double.infinity,
                                ),
                                Positioned(
                                  right: 20,
                                  bottom: 20,
                                  child: Text(
                                    "Accenture PTF\nGrand Finalist",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 22,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              width: double.infinity,
                              height: double.infinity,
                              color: Globals.darkBlue,
                              child: InkWell(
                                onTap: () async {
                                  print("tapped");
                                  await launch(
                                      "https://www.accenture.com/ph-en/careers/accenture-technology-campus-challenge");
                                },
                                child: Padding(
                                  padding:
                                      EdgeInsets.all(((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 10),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Accenture Program The Future 2019",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 22,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                            height: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 10),
                                        Text(
                                          "Joined Accenture’s Program The Future 2019, one of the largest and most notable technology innovation competitions in the Philippines. We managed to be a grand finalist out of hundreds of schools.",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 16,
                                              fontWeight: FontWeight.w300),
                                        ),
                                        SizedBox(height: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 5),
                                        FaIcon(FontAwesomeIcons.link,
                                            size: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 30,
                                            color: Globals.white)
                                      ]),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 60,
                      width: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 60,
                    ),
                    Flex(
                      mainAxisSize: MainAxisSize.min,
                      direction: (Globals.height > Globals.width)
                          ? Axis.vertical
                          : Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: HoverCard(
                            Stack(
                              children: <Widget>[
                                Image.asset(
                                  "assets/photos/hackit.jpg",
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: double.infinity,
                                ),
                                Positioned(
                                  right: 20,
                                  bottom: 20,
                                  child: Text(
                                    "Alliance HackIT\n2nd Place",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 22,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              width: double.infinity,
                              height: double.infinity,
                              color: Globals.darkBlue,
                              child: InkWell(
                                onTap: () async {
                                  print("tapped");
                                  await launch(
                                      "https://www.facebook.com/AllianceSoftwareInc/");
                                },
                                child: Padding(
                                  padding:
                                      EdgeInsets.all(((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 10),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Alliance HackIT Challenge 2019",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 22,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                            height: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 10),
                                        Text(
                                          "Joined Alliance’s HackIt Challenge 2019, an annual Hackathon event between the top schools in Cebu Island. We won 2nd place.",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 16,
                                              fontWeight: FontWeight.w300),
                                        ),
                                        SizedBox(height: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 5),
                                        FaIcon(FontAwesomeIcons.link,
                                            size: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 30,
                                            color: Globals.white)
                                      ]),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 60,
                          height: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 60,
                        ),
                        Flexible(
                          flex: 1,
                          child: HoverCard(
                              Stack(
                                children: <Widget>[
                                  Image.asset(
                                    "assets/photos/azure_hack.png",
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: double.infinity,
                                  ),
                                  Positioned(
                                    right: 20,
                                    bottom: 20,
                                    child: Text(
                                      "Microsoft Azure Hack\nAPAC Region 2020\nGrand Champion",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 22,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                width: double.infinity,
                                height: double.infinity,
                                color: Globals.darkBlue,
                                child: InkWell(
                                  onTap: () async {
                                    print("tapped");
                                    await launch(
                                        "https://www.msazurevirtualhack.com/");
                                  },
                                  child: Padding(
                                    padding:
                                        EdgeInsets.all(((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 10),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Microsoft Azure Virtual Hack 2020",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize:
                                                    ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 22,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                              height: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 10),
                                          Text(
                                            "Microsoft Azure Virtual Hack was a virtual Data Science hackathon in the Asia Pacific Region. Teamed up with people all over SEA and we managed to be the winners!", textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize:
                                                    ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 16,
                                                fontWeight: FontWeight.w300),
                                          ),
                                          SizedBox(
                                              height: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 5),
                                          FaIcon(FontAwesomeIcons.link,
                                              size: ((Globals.width>Globals.height) ? Globals.dwidth: Globals.dheight) * 30,
                                              color: Globals.white)
                                        ]),
                                  ),
                                ),
                              )),
                        ),
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
