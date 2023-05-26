import 'package:flutter/material.dart';
import 'package:coffee_app/components/a_button/index.dart';
import 'package:coffee_app/utils/global.dart';

class OrderDetail extends StatefulWidget {

  const OrderDetail({Key key}) : super(key: key);

  _OrderDetailState createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(title: '订单详情', context: context, actions: <Widget>[
        Container(
          padding: EdgeInsets.only(right: 20),
          child: Icon(
            IconData(0xe625, fontFamily: 'iconfont'),
            size: 18,
            color: Color.fromRGBO(148, 196, 236, 1),
          ),
        )
      ]),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(border: cuBorderBottom()),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '外卖订单:33412823848583',
                            style: TextStyle(
                                color: Color.fromRGBO(128, 128, 128, 1),
                                fontSize: 13),
                          ),
                          Text(
                            '2023-06-11 14:22',
                            style: TextStyle(
                                color: Color.fromRGBO(128, 128, 128, 1),
                                fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Column(
                        children: <Widget>[
                          Container(
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
                                            color:
                                                Color.fromRGBO(56, 56, 56, 1),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'asda',
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
                                      'x2',
                                      style: TextStyle(
                                          color: Color.fromRGBO(80, 80, 80, 1),
                                          fontSize: 13),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 80),
                                      child: Text(
                                        '¥ 24',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color:
                                                Color.fromRGBO(56, 56, 56, 1),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '配送费',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(56, 56, 56, 1),
                            ),
                          ),
                          Text(
                            '¥6',
                            style: TextStyle(
                                color: Color.fromRGBO(56, 56, 56, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(border: cuBorderBottom()),
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '使用咖啡钱包',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(144, 192, 239, 1),
                            ),
                          ),
                          Text(
                            '-￥3',
                            style: TextStyle(
                                color: Color.fromRGBO(144, 192, 239, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '共2件商品',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(56, 56, 56, 1),
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                '实付',
                                style: TextStyle(
                                    color: Color.fromRGBO(56, 56, 56, 1),
                                    fontSize: 14),
                              ),
                              Text(
                                '￥27',
                                style: TextStyle(
                                    color: Color.fromRGBO(56, 56, 56, 1),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // module3
              Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '收货地址',
                          style: TextStyle(
                              color: Color.fromRGBO(56, 56, 56, 1),
                              fontSize: 14),
                        ),
                        Text(
                          '昆明市云南大学呈贡校区楸院4栋',
                          style: TextStyle(
                              color: Color.fromRGBO(128, 128, 128, 1),
                              fontSize: 13),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'Acher先生  13244234213',
                            style: TextStyle(
                                color: Color.fromRGBO(128, 128, 128, 1),
                                fontSize: 13),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

              // module4
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Image.asset('lib/assets/images/order/order2.png',
                    height: 60),
              )
            ],
          ),
        ),
      ),
    );
  }
}
