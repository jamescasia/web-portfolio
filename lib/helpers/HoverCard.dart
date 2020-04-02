import 'package:flutter/material.dart';
import 'package:portfolio/helpers/Globals.dart';
import 'package:flip_card/flip_card.dart';

class HoverCard extends StatefulWidget {
  Widget normal;
  Widget hover;
  bool hovering = false;
  HoverCard(this.normal, this.hover);

  @override
  _HoverCardState createState() => _HoverCardState();
}

class _HoverCardState extends State<HoverCard>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> animation;
  mouseEnter(e) {
    print("entered hover card");
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      lowerBound: 1,
      upperBound: 1.5,
      duration: Duration(milliseconds: 200),
    )..addListener(() => setState(() {}));
    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      child: GestureDetector(
        onLongPress: () {
          setState(() {
            widget.hovering = true;
            animationController.forward();
          });
        },
        onLongPressEnd: (e) {
          setState(() {
            widget.hovering = false;
            animationController.animateBack(1);
          });
        },
        child: MouseRegion(
          onEnter: (e) {
            setState(() {
              widget.hovering = true;
              animationController.forward();
            });
          },
          onExit: (e) {
            setState(() {
              widget.hovering = false;
              animationController.animateBack(1);
            });
          },
          child: Container(
            color: Globals.black,
            width: (Globals.width * 0.44 / Globals.height * 0.26 > (16 / 9))
                ? Globals.width * 0.44
                : Globals.height * 0.26 * (16 / 9),
            height: Globals.height * 0.26,
            child: Stack(children: [
              AnimatedContainer(
                // scale: animation,
                transform: (widget.hovering)
                    ? Matrix4.translationValues(0, Globals.height * 0.26, 0)
                    : Matrix4.translationValues(0, 0, 0),
                duration: Duration(milliseconds: 300),
                curve: Curves.ease,
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: widget.normal),
              ),
              AnimatedContainer(
                curve: Curves.ease,
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: widget.hover),
                duration: Duration(milliseconds: 300),
                transform: (widget.hovering)
                    ? Matrix4.translationValues(0, 0, 0)
                    : Matrix4.translationValues(0, -Globals.height * 0.26, 0),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
