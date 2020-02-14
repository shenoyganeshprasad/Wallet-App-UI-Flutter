import 'package:flutter/material.dart';
import 'package:wallet_app/widgets/roundedButton.dart';
import 'widgets/cardWidget.dart';
import 'widgets/transferHistoryWidget.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF131313),
      appBar: AppBar(
        backgroundColor: Color(0xFF131313),
        elevation: 0.0,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.more_horiz,
              size: 40.0,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.0, top: 20.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'BALANCE',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    "\$3,020.09",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  CardWidget(
                    gradientBegin: Alignment.topLeft,
                    gradiendEnd: Alignment.bottomRight,
                    colors: [const Color(0xFFf3a8b0), const Color(0xFFc088d6)],
                    text: "Litecoin",
                    coins: "14.3910 LCT",
                    dollars: "\$915.39",
                  ),
                  SizedBox(width: 10.0),
                  CardWidget(
                    gradientBegin: Alignment.topLeft,
                    gradiendEnd: Alignment.bottomLeft,
                    colors: [const Color(0xFFadf6de), const Color(0xFF6eead2)],
                    text: "Ripple",
                    coins: "3001.2301 XRP",
                    dollars: "\$759.34",
                  )
                ],
              ),
            ),
            SizedBox(height: 30.0),
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RoundedButton(
                    iconData: LineAwesomeIcons.download,
                    color: Colors.green[300],
                  ),
                  // SizedBox(width: 20.0),
                  RoundedButton(
                    iconData: LineAwesomeIcons.upload,
                    color: Colors.pink[300],
                  ),
                  // SizedBox(width: 20.0),
                  RoundedButton(
                    iconData: LineAwesomeIcons.credit_card,
                    color: Colors.white,
                  ),
                  // SizedBox(width: 20.0),
                  RoundedButton(
                    iconData: LineAwesomeIcons.undo,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              "TRANSFER HISTORY",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 20.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TransterHistorWidget(
                  iconData: LineAwesomeIcons.download,
                  text: "Received",
                  date: "15 Aug",
                  coins: "0.0002 LTC",
                  dollars: "\$1.49",
                  color: Colors.green[400]
                ),
                SizedBox(height: 20.0),
                TransterHistorWidget(
                  iconData: LineAwesomeIcons.upload,
                  text: "Sent",
                  date: "13 Aug",
                  coins: "-\$0.0004 LTC",
                  dollars: "-\$2.98",
                  color: Colors.pink[400],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
