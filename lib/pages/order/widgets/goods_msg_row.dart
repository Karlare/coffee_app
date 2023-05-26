import 'package:flutter/material.dart';
import 'package:coffee_app/utils/global.dart';

class GoodsMsgRow extends StatelessWidget {
  GoodsMsgRow({Key key, this.marginBottom = true});

  /// 底部距离
  final bool marginBottom;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      margin: EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text(
                  '拿铁椰汁',
                  style: TextStyle(
                      fontSize: 15,
                      color: Color.fromRGBO(56, 56, 56, 1),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Text(
                  '${G.handleGoodsDesc("规格:中,温度:热,糖度:无糖").replaceAll(',', '/')}',
                  style: TextStyle(
                    fontSize: 10,
                    color: Color.fromRGBO(56, 56, 56, 1),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                'x1',
                style: TextStyle(
                    color: Color.fromRGBO(80, 80, 80, 1), fontSize: 13),
              ),
              Container(
                margin: EdgeInsets.only(left: 80),
                child: Text(
                  '¥ 12',
                  style: TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(56, 56, 56, 1),
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
