import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final IconData iconData;
  final Color color;
  RoundedButton({@required this.iconData, @required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.0,
      height: 80.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        color: Color(0xFF212224),
      ),
      child: Icon(
        iconData,
        size: 40.0,
        color: color,
      ),
    );
  }
}
