import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  static const Color defaultColor = Color(0xFF1D1E33);
  final Color colour;
  final Widget? cardChild;
  final Function? onTap;

  ReusableCard({this.onTap, this.colour = defaultColor, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(10.0)
        ),
      ),
    );
  }
}


