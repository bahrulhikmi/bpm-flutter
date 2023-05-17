import 'package:flutter/material.dart';

class IconWithText extends StatelessWidget {

  final IconData iconData;
  final String text;
  final double size;

  IconWithText({required this.iconData, this.text = "", this.size = 80.0});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center ,
      children: [
        Icon(this.iconData, size: this.size,),
        SizedBox(height: 15.0,),
        Text(text, style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98),
        ),
        ),
      ],
    );
  }
}