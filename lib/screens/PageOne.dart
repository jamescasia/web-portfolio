import 'package:flutter/material.dart';
import 'package:portfolio/helpers/Globals.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Globals.black,
      width: Globals.width,
      height: Globals.height,
      child: Stack(
        children: <Widget>[
          Column(children: [
            Container(
              width: Globals.width,
              height: Globals.height * 0.5,
            ),
            Container(
              width: Globals.width,
              height: Globals.height * 0.5,
              decoration: BoxDecoration(
                  color: Globals.violet,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60))),
            ),
          ]),
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            // Container(
            //   margin: EdgeInsets.only(top:Globals.dwidth*20),
            //   width:Globals.width*0.76,
            //   child: Row(
            //     mainAxisSize: MainAxisSize.max,
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: <Widget>[
            //       Container(
            //           color: Globals.violet,
            //           width: Globals.dwidth * 60,
            //           height: Globals.dwidth * 60),
            //       MaterialButton(
            //         onPressed: () {},
            //         child: Text(
            //           "Contact",
            //           style: TextStyle(
            //               color: Globals.violet,
            //               fontWeight: FontWeight.w800,
            //               fontSize: Globals.dwidth * 22),
            //         ),
            //         color: Globals.black,
            //         height: Globals.dwidth * 50,
            //         shape: RoundedRectangleBorder(
            //             side: BorderSide(
            //                 color: Globals.violetOutline, width: 2 * Globals.dwidth),
            //             borderRadius: BorderRadius.all(Radius.circular(1000))),
            //       )
            //     ],
            //   ),
            // ),
            SizedBox(height: Globals.dwidth * 60),
            Column(
              children: <Widget>[
                Text(
                  "James Casia",
                  style: TextStyle(
                      fontSize: Globals.dwidth * 60,
                      color: Globals.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: Globals.dwidth * 30),
                Text(
                  "I design, code, learn, solve problems, and explore.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: Globals.dwidth * 26,
                      color: Globals.white,
                      fontWeight: FontWeight.w300),
                )
              ],
            ),
            ClipRRect(
              child: Image.asset(
                "assets/photos/profile.png",
                fit: BoxFit.cover,
                height: Globals.dwidth * 260,
                width: Globals.dwidth * 260,
              ),
              borderRadius: BorderRadius.circular(1000),
            ),
            Container(
              height: Globals.height * 0.3,
            )
          ]),
        ],
      ),
    );
  }
}
