
import 'package:flutter/material.dart';
import 'package:coffee_app/components/a_button/index.dart';
import 'package:coffee_app/utils/global.dart';

import '../toolbar/home/index.dart';

class LoginMail extends StatefulWidget {
  LoginMail({Key key}) : super(key: key);

  _LoginMailState createState() => _LoginMailState();
}

class _LoginMailState extends State<LoginMail> {
  static Map Username = {"value": null, "verify": true};
  static Map Password = {"value": null, "verify": true};



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: customAppbar(context: context, borderBottom: false),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(left: 35, right: 35, top: 87),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 20),
              width: 80,
              height: 94,
              child: Image.asset(
                'lib/assets/images/logo1.png',
                fit: BoxFit.cover,
              ),
            ),

            /// 输入邮箱
            Container(
              height: 55,
              decoration: BoxDecoration(border: cuBorderBottom()),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    counterText: "",
                    border: InputBorder.none,
                    hintText: '请输入用户名',
                    hintStyle: TextStyle(
                      fontSize: 14,
                    )),
                onChanged: (e) {},
              ),
            ),

            /// 验证码
            Container(
              height: 55,
              decoration: BoxDecoration(border: cuBorderBottom()),
              child: Row(
                children: <Widget>[
                  Flexible(
                    child: TextField(
                      maxLength: 4,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          counterText: '',
                          border: InputBorder.none,
                          hintText: '请输入密码',
                          hintStyle: TextStyle(
                            fontSize: 14,
                          )),
                      onChanged: (e) {
                        setState(() {
                          Password['value'] = e;
                          Password['verify'] = e.length == 4 ? true : false;
                        });
                      },
                    ),
                  ),
                  Container(
                    height: 25,
                    decoration: BoxDecoration(
                        border: Border(
                            left: BorderSide(
                                color: Color.fromRGBO(242, 242, 242, 1)))),
                  ),
                ],
              ),
            ),

            /// 确认
            Container(
              margin: EdgeInsets.only(top: 20),
              child: AButton.normal(
                width: 300,
                child: Text('确定'),
                bgColor: Color.fromRGBO(80, 200, 213, 1),
                color: Colors.white,
                onPressed: () {Navigator.pushNamed(context, Home.routeName);},
              ),
            ),

            /// 协议
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '注册',
                    style: TextStyle(
                        fontSize: 12, color: Color.fromRGBO(153, 153, 153, 1)),
                  ),
                  InkWell(
                    child: Text(
                      '忘记密码',
                      style: TextStyle(
                          color: Color.fromRGBO(85, 122, 157, 1), fontSize: 12),
                    ),
                    onTap: () =>
                        Navigator.pushNamed(context, '/user_agreement'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
