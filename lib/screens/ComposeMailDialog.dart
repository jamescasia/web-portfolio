import 'package:flutter/material.dart';
import 'package:portfolio/helpers/Globals.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ComposeMailDialog extends StatefulWidget {
  @override
  _ComposeMailDialogState createState() => _ComposeMailDialogState();
}

class _ComposeMailDialogState extends State<ComposeMailDialog> {
  TextEditingController emailController;
  TextEditingController titleController;
  TextEditingController nameController;
  TextEditingController detailsController;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: Container(
        color: Globals.black,
        width: Globals.width * 0.5,
        height: Globals.height * 0.6,
        padding: EdgeInsets.all(Globals.dwidth * 30),
        child: Stack(
          children: <Widget>[
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Globals.dwidth * 20,
                  ),
                  Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Name",
                              style: TextStyle(
                                  fontSize: Globals.dwidth * 22,
                                  color: Globals.white,
                                  fontWeight: FontWeight.w300),
                            ),
                            TextField(
                              style: TextStyle(
                                  fontSize: Globals.dwidth * 18,
                                  color: Colors.white),
                              controller: nameController,
                              decoration: new InputDecoration.collapsed(
                                  border: new OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2, color: Colors.white),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                  hintText: 'Name'),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Email",
                              style: TextStyle(
                                  fontSize: Globals.dwidth * 22,
                                  color: Globals.white,
                                  fontWeight: FontWeight.w300),
                            ),
                            TextField(
                              style: TextStyle(
                                  fontSize: Globals.dwidth * 18,
                                  color: Colors.white),
                              controller: emailController,
                              decoration: new InputDecoration.collapsed(
                                  border: new OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.white),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                  hintText: 'Email'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Project Title",
                        style: TextStyle(
                            fontSize: Globals.dwidth * 22,
                            color: Globals.white,
                            fontWeight: FontWeight.w300),
                      ),
                      TextField(
                        style: TextStyle(
                            fontSize: Globals.dwidth * 18,
                            color: Colors.white),
                        controller: titleController,
                        decoration: new InputDecoration.collapsed(
                            border: new OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            hintText: 'Project Title'),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Additional Details",
                        style: TextStyle(
                            fontSize: Globals.dwidth * 22,
                            color: Globals.white,
                            fontWeight: FontWeight.w300),
                      ),
                      TextField(
                        
                        style: TextStyle(
                            fontSize: Globals.dwidth * 18,
                            color: Colors.white),
                        controller: detailsController,
                        maxLines: 5,
                        decoration: new InputDecoration.collapsed(
                            border: new OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            hintText: 'Details'),
                      ),
                    ],
                  ),
                ]),
            Positioned(
                right: 0,
                top: 0,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: FaIcon(FontAwesomeIcons.times,
                      color: Colors.white, size: Globals.dwidth * 40),
                ))
          ],
        ),
      ),
    );
  }
}
