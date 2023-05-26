import 'package:flutter/material.dart';

import '../../components/a_button/index.dart';
import '../../utils/custom_appbar.dart';
import '../toolbar/home/index.dart';

class Cancel extends StatelessWidget {

  const Cancel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushNamed(context, '/mine');
    });
    return Scaffold(
        appBar: customAppbar(
        title: '取消订单',
        context: context,
    ),
      body:
      Container(
        padding: EdgeInsets.symmetric(vertical: 30),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '取消成功',
                  style: TextStyle(
                      color: Color.fromRGBO(56, 56, 56, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: 55,
                  height: 16,
                  decoration: BoxDecoration(
                      border:
                      Border.all(color: Color.fromRGBO(217, 217, 217, 1)),
                      borderRadius: BorderRadius.circular(4)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.cancel,
                        color: Color.fromRGBO(48, 100, 157, 1),
                        size: 12,
                      ),
                      Text(
                        '已取消',
                        style: TextStyle(
                            color: Color.fromRGBO(80, 80, 80, 1), fontSize: 10),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        )));
  }
}