import 'package:flutter/material.dart';
import 'package:wallet_app/widgets/roundedButton.dart';

class TransterHistorWidget extends StatelessWidget {
  final IconData iconData;
  final String text;
  final String date;
  final String coins;
  final String dollars;
  final Color color;
  TransterHistorWidget(
      {@required this.iconData,
      @required this.text,
      @required this.date,
      @required this.coins,
      @required this.dollars,
      @required this.color,});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        RoundedButton(
          iconData: iconData,
          color: Colors.white,
        ),
        SizedBox(width: 20.0,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              text,
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5.0),
            Text(
              date,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
        SizedBox(width: 70.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              coins,
              style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: color),
            ),
            SizedBox(height: 5.0),
            Text(
              dollars,
              style: TextStyle(color: color),
            ),
          ],
        ),
      ],
    );
  }
}
