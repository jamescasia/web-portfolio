import 'package:flutter/material.dart';
import 'package:portfolio/helpers/Globals.dart';
import 'package:portfolio/helpers/FlippingCard.dart';
import 'package:flip_card/flip_card.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class PageThree extends StatefulWidget {
  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Globals.black,
      width: Globals.width,
      height: Globals.height,
      child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: Globals.dheight * 100),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                FaIcon(
                  FontAwesomeIcons.trophy,
                  size: Globals.dheight * 60,
                  color: Globals.white,
                ),
                SizedBox(height: Globals.dheight * 24),
                Text(
                  "Achievements",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: Globals.dheight * 36,
                      color: Globals.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: Globals.dheight * 24),
                Text(
                  "Things I have achieved over the years that I am proud of.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: Globals.dheight * 22,
                      color: Globals.white,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(height: Globals.dheight * 100),
              ],
            ),
            // SizedBox(height: Globals.dheight * 20),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlippingCard(
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
                                      fontSize: Globals.dheight * 22,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                          Container(
                            width: double.infinity,
                            height: double.infinity,
                            child: InkWell(
                              onTap: () async {
                                print("tapped");
                                await launch(
                                    "https://androidmasters.eclaro.gdgph.org/");
                              },
                              child: Padding(
                                padding: EdgeInsets.all(Globals.dheight * 10),
                                child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Android masters 2018",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: Globals.dheight * 22,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(height: Globals.dheight * 10),
                                      Text(
                                        "Joined Google’s Android Masters 2018, national Game and App Development Competition, with hundreds of participating schools all over the country, and became the Grand Champion",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: Globals.dheight * 16,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      SizedBox(height: Globals.dheight * 5),
                                      FaIcon(FontAwesomeIcons.link,
                                          size: Globals.dheight * 30,
                                          color: Globals.white)
                                    ]),
                              ),
                            ),
                          )),
                      SizedBox(width: Globals.dwidth * 60),
                      FlippingCard(
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
                                    fontSize: Globals.dheight * 22,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: double.infinity,
                          height: double.infinity,
                          child: InkWell(
                            onTap: () async {
                              print("tapped");
                              await launch(
                                  "https://www.accenture.com/ph-en/careers/accenture-technology-campus-challenge");
                            },
                            child: Padding(
                              padding: EdgeInsets.all(Globals.dheight * 10),
                              child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Accenture Program The Future 2019",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: Globals.dheight * 22,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(height: Globals.dheight * 10),
                                    Text(
                                      "Joined Accenture’s Program The Future 2019, one of the largest and most notable technology innovation competitions in the Philippines. We managed to be a grand finalist out of hundreds of schools.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: Globals.dheight * 16,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    SizedBox(height: Globals.dheight * 5),
                                    FaIcon(FontAwesomeIcons.link,
                                        size: Globals.dheight * 30,
                                        color: Globals.white)
                                  ]),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  // SizedBox(height: Globals.dheight * 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlippingCard(
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
                                    fontSize: Globals.dheight * 22,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: double.infinity,
                          height: double.infinity,
                          child: InkWell(
                            onTap: () async {
                              print("tapped");
                              await launch(
                                  "https://www.facebook.com/AllianceSoftwareInc/");
                            },
                            child: Padding(
                              padding: EdgeInsets.all(Globals.dheight * 10),
                              child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Alliance HackIT Challenge 2019",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: Globals.dheight * 22,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(height: Globals.dheight * 10),
                                    Text(
                                      "Joined Alliance’s HackIt Challenge 2019, an annual Hackathon event between the top schools in Cebu Island. We won 2nd place.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: Globals.dheight * 16,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    SizedBox(height: Globals.dheight * 5),
                                    FaIcon(FontAwesomeIcons.link,
                                        size: Globals.dheight * 30,
                                        color: Globals.white)
                                  ]),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: Globals.dwidth * 60),
                      FlippingCard(
                          Stack(
                            children: <Widget>[
                              Image.asset(
                                "assets/photos/android_masters_2.jpg",
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: double.infinity,
                              ),
                              Positioned(
                                right: 20,
                                bottom: 20,
                                child: Text(
                                  "Android Masters 2018\nGrand Finalist",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: Globals.dheight * 22,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                          Container(
                            width: double.infinity,
                            height: double.infinity,
                            child: InkWell(
                              onTap: () async {
                                print("tapped");
                                await launch(
                                    "https://androidmasters.eclaro.gdgph.org/");
                              },
                              child: Padding(
                                padding: EdgeInsets.all(Globals.dheight * 10),
                                child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Android masters Finals",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: Globals.dheight * 22,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(height: Globals.dheight * 10),
                                      Text(
                                        "This seems to be a mistake. Why is there a repeat? Well, because I along with my team submitted two entries, and out of hundreds of submissions, two of ours got in top 5.",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: Globals.dheight * 16,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      SizedBox(height: Globals.dheight * 5),
                                      FaIcon(FontAwesomeIcons.link,
                                          size: Globals.dheight * 30,
                                          color: Globals.white)
                                    ]),
                              ),
                            ),
                          )),
                    ],
                  )
                ],
              ),
            )
          ]),
    );
  }
}
