import 'package:flutter/material.dart';
import 'package:portfolio/helpers/Globals.dart';

class Grid extends StatelessWidget {
  List<Widget> children;

  double verticalSpace;
  double horizontalSpace;
  double width;

  Grid(
      {@required this.verticalSpace,
      @required this.horizontalSpace,
      @required this.width,
      @required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        child: Wrap(
          runSpacing: verticalSpace,
          spacing: horizontalSpace,
          children: children,
          runAlignment: WrapAlignment.center,
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
        ));
  }
}
