import 'reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_with_text.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: ReusableCard(
                cardChild: IconWithText(iconData: FontAwesomeIcons.mars, text: 'MALE',),
              )
              ),
              Expanded(child: ReusableCard(
                cardChild: IconWithText(iconData: FontAwesomeIcons.venus, text: 'FEMALE',),
              )),
            ],
          )),
          Expanded(child: ReusableCard()),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: ReusableCard()
              ),
              Expanded(child: ReusableCard()),
            ],
          )),
          Container(
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 80.0,
          )
        ]
        ,
      )
    );
  }
}
