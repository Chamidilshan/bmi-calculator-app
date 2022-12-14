import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF3E435F);
const bottomContainerColor = Color(0xFFEA1556);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded( child: Row(
            children: <Widget>[
              Expanded(child: ReusableCard(colour: activeCardColour,
              )),
              Expanded(child: ReusableCard(colour: activeCardColour,)),
            ],
          ),
          ),
          Expanded(child: ReusableCard(colour: activeCardColour,)),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child:ReusableCard(colour: activeCardColour,)),
              Expanded(child: ReusableCard(colour: activeCardColour,)),
            ],
          ),),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
            color: bottomContainerColor,
          )
        ],
      )
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour});
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ) ,
    );
  }
}
