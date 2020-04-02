import 'package:flutter/material.dart';
import 'package:portfolio/helpers/Globals.dart';
import 'package:flip_card/flip_card.dart';

class FlippingCard extends StatelessWidget {
  Widget front;
  Widget back;
  FlippingCard(this.front, this.back);
  @override
  Widget build(BuildContext context) {
    return FlipCard(
      front: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: Container(
          width: (Globals.width * 0.44 / Globals.height * 0.26 > (16 / 9))
              ? Globals.width * 0.44
              : Globals.height * 0.26 * (16 / 9),
          height: Globals.height * 0.26,
          child: front,
        ),
      ),
      back: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: Container( 
          width: (Globals.width * 0.44 / Globals.height * 0.26 > (16 / 9))
              ? Globals.width * 0.44
              : Globals.height * 0.26 * (16 / 9),
          height: Globals.height * 0.26,
          child: back,
        ),
      ),
    );
  }
}
