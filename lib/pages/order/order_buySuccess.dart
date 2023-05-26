import 'package:flutter/material.dart';

import '../../components/a_button/index.dart';
import '../../utils/custom_appbar.dart';

class BuySuccess extends StatelessWidget {

  const BuySuccess({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppbar(
        title: '下单',
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
                  '下单成功',
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
                        Icons.security_outlined,
                        color: Color.fromRGBO(48, 100, 157, 1),
                        size: 12,
                      ),
                      Text(
                        '慢必赔',
                        style: TextStyle(
                            color: Color.fromRGBO(80, 80, 80, 1), fontSize: 10),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '预计',
                    style: TextStyle(
                        color: Color.fromRGBO(56, 56, 56, 1), fontSize: 12),
                  ),
                  Text(
                    '15:15',
                    style: TextStyle(
                        color: Color.fromRGBO(144, 192, 239, 1), fontSize: 12),
                  ),
                  Text(
                    '送达，请耐心等待luckin来临！',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(56, 56, 56, 1),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  AButton.normal(
                      child: Text(
                        '取消订单',
                        style: TextStyle(fontSize: 14),
                      ),
                      width: 105,
                      height: 32,
                      plain: true,
                      color: Color.fromRGBO(136, 175, 213, 1),
                      borderColor: Color.fromRGBO(217, 217, 217, 1),
                      onPressed: () => {Navigator.pushNamed(context, '/cancel'),}),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: AButton.normal(
                        child: Text('订单详情'),
                        width: 105,
                        height: 32,
                        plain: true,
                        color: Color.fromRGBO(136, 175, 213, 1),
                        borderColor: Color.fromRGBO(136, 175, 213, 1),
                        onPressed: () => {Navigator.pushNamed(context, '/order_detail')}),
                  )
                ],
              ),
            )
          ],
        )));
  }
}