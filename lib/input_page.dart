import 'reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_with_text.dart';

const inactiveCardColour = Color(0xFF111328);
const activeCardColour = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}



class _InputPageState extends State<InputPage> {

  Color maleCardColour = inactiveCardColour;
  Color femaleCardColour = inactiveCardColour;

  void updateColour(int gender){
    //male card pressed
    if(gender == 1){
      if(maleCardColour == inactiveCardColour){
        maleCardColour = activeCardColour;
        femaleCardColour = inactiveCardColour;
      }
      else{
        maleCardColour = inactiveCardColour;
      }
    }
  else{
      if(femaleCardColour == inactiveCardColour){
        femaleCardColour = activeCardColour;
        maleCardColour = inactiveCardColour;
      }
      else{
        femaleCardColour = inactiveCardColour;
      }
    }
  }

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
              Expanded(child: GestureDetector(
                onTap: () {
                  setState(() {
                    updateColour(1);
                  });
                },
                child: ReusableCard(
                  colour: maleCardColour,
                  cardChild: IconWithText(iconData: FontAwesomeIcons.mars, text: 'MALE',),
                ),
              )
              ),
              Expanded(child: GestureDetector(
                onTap: () {
                  setState(() {
                    updateColour(2);
                  });
                },
                child: ReusableCard(
                  colour: femaleCardColour,
                  cardChild: IconWithText(iconData: FontAwesomeIcons.venus, text: 'FEMALE',),
                ),
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
