import 'package:flutter/material.dart';
import 'package:coffee_app/utils/global.dart';

class DiningCode extends StatefulWidget {
  DiningCode();

  _DiningCodeState createState() => _DiningCodeState();
}

class _DiningCodeState extends State<DiningCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppbar(title: "取餐码", context: context),
        body: Container(
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.symmetric(vertical: 30),
            height: 395,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '取餐码：',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(56, 56, 56, 1)),
                    ),
                    Text(
                      '432',
                      style: TextStyle(
                          color: Color.fromRGBO(136, 175, 213, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'piu先生，请扫码取餐',
                      style: TextStyle(
                          color: Color.fromRGBO(56, 56, 56, 1), fontSize: 14),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'lib/assets/images/QRCode_258.png',
                        width: 155,
                        fit: BoxFit.cover,
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // Button.bigButton(
                      //   '分享餐码给好友',
                      //   bgColor: Colors.transparent,
                      //   color: Color.fromRGBO(144, 192, 239, 1),
                      //   border: Border.all(color: Color.fromRGBO(144, 192, 239, 1)),
                      //   height: 30,
                      //   fontSize: 14,
                      //   width: 150,
                      // )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
