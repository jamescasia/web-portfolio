import 'package:flutter/material.dart';
import 'package:portfolio/helpers/Globals.dart';

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
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          margin: EdgeInsets.only(top:Globals.dheight*20),
          width:Globals.width*0.76,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                  color: Globals.violet,
                  width: Globals.dheight * 60,
                  height: Globals.dheight * 60),
              MaterialButton(
                onPressed: () {},
                child: Text(
                  "Contact",
                  style: TextStyle(
                      color: Globals.violet,
                      fontWeight: FontWeight.w800,
                      fontSize: Globals.dheight * 22),
                ),
                color: Globals.black,
                height: Globals.dheight * 50,
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: Globals.violetOutline, width: 2 * Globals.dheight),
                    borderRadius: BorderRadius.all(Radius.circular(1000))),
              )
            ],
          ),
        ),
        Column(
          children: <Widget>[
            Text(
              "James Casia",
              style: TextStyle(
                  fontSize: Globals.dheight * 60,
                  color: Globals.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: Globals.dheight * 30),
            Text(
              "I design, code, learn, and explore.",
              style: TextStyle(
                  fontSize: Globals.dheight * 26,
                  color: Globals.white,
                  fontWeight: FontWeight.w300),
            )
          ],
        ),
        ClipRRect(
          child: Image.asset(
            "assets/photos/profile.png",
            fit: BoxFit.cover,
            height: Globals.dheight * 220,
            width: Globals.dheight * 220,
          ),
          borderRadius: BorderRadius.circular(1000),
        ),
        Container(
          height: Globals.height * 0.3,
        )
      ]),
    );
  }
}
