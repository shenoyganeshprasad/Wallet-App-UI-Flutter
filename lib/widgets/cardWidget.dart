import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final AlignmentGeometry gradientBegin;
  final AlignmentGeometry gradiendEnd;
  final List<Color> colors;
  final String text;
  final String coins;
  final String dollars;

  CardWidget(
      {@required this.gradientBegin,
      @required this.gradiendEnd,
      @required this.colors,
      @required this.text,
      @required this.coins,
      @required this.dollars
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.0,
      height: 250.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: gradientBegin,
          end: gradiendEnd,
          colors: colors,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 30.0),
            child: Text(
              text,
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          SizedBox(height: 100.0),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              coins,
              style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 5.0),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(dollars),
          ),
        ],
      ),
    );
  }
}
