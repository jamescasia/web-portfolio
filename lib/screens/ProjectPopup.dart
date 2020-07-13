import 'package:flutter/material.dart';
import 'package:portfolio/helpers/Globals.dart';
import 'package:portfolio/models/Project.dart';

class ProjectPopup extends StatefulWidget {
  Project project;
  ProjectPopup(this.project);
  @override
  _ProjectPopupState createState() => _ProjectPopupState(this.project);
}

class _ProjectPopupState extends State<ProjectPopup> {
  Project project;
  _ProjectPopupState(this.project);
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: Container(
        color: Globals.black,
        width: Globals.width * 0.5,
        height: Globals.height * 0.6,
        padding: EdgeInsets.all(((Globals.width > Globals.height)
                ? Globals.dwidth
                : Globals.dheight) *
            30),
        child: Stack(
          children: <Widget>[],
        ),
      ),
    );
  }
}
