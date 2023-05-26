import 'package:flutter/material.dart';

class TakeOutBtn extends StatefulWidget {
  @override
  _TakeOutBtnState createState() => _TakeOutBtnState();
}

class _TakeOutBtnState extends State<TakeOutBtn> {
  bool _isSelfPickup = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      width: 120,
      height: 36,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: _isSelfPickup
              ? Color.fromRGBO(136, 175, 213, 1)
              : Color.fromRGBO(204, 192, 180, 1),
        ),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              setState(() {
                _isSelfPickup = true;
              });
            },
            child: Container(
              width: 44,
              height: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: _isSelfPickup
                      ? Color.fromRGBO(136, 175, 213, 1)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(15)),
              child: Text(
                '自提',
                style: TextStyle(
                  color: _isSelfPickup
                      ? Colors.white
                      : Color.fromRGBO(136, 175, 213, 1),
                  fontSize: 12,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _isSelfPickup = false;
              });
            },
            child: Container(
              width: 44,
              height: 30,
              margin: EdgeInsets.only(right: 9),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: !_isSelfPickup
                    ? Color.fromRGBO(136, 175, 213, 1)
                    : Colors.white,
                border: Border.all(
                  width: 1,
                  color: !_isSelfPickup
                      ? Color.fromRGBO(136, 175, 213, 1)
                      : Color.fromRGBO(204, 192, 180, 1),
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                '外送',
                style: TextStyle(
                  color: !_isSelfPickup
                      ? Colors.white
                      : Color.fromRGBO(136, 175, 213, 1),
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}