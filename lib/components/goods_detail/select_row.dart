import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SelectRow1 extends StatefulWidget {
  SelectRow1();

  @override
  _SelectRow1State createState() => _SelectRow1State();
}

class _SelectRow1State extends State<SelectRow1> {
  String _selectedOption1 = '';

  Container _createRadio(String option) {
    return Container(
      key: Key(option),
      margin: EdgeInsets.only(right: 10),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            _selectedOption1 = option;
          });
        },
        style: ElevatedButton.styleFrom(
          primary: option == _selectedOption1
              ? Colors.white
              : Color.fromRGBO(204, 192, 180, 1),
          onPrimary: option == _selectedOption1
              ? Color.fromRGBO(204, 192, 180, 1)
              : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: BorderSide(
              color: option == _selectedOption1
                  ? Colors.transparent
                  : Color.fromRGBO(204, 192, 180, 1),
              width: 1.0,
            ),
          ),
        ),
        child: Text(
          option,
          style: TextStyle(fontSize: 12),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 6, bottom: 6),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 65,
                  alignment: Alignment.center,
                  height: 30,
                  child: Text(
                    '温度',
                    style: TextStyle(color: Color.fromRGBO(56, 56, 56, 1)),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Wrap(
                      children: [
                        _createRadio('热'),
                        _createRadio('冰')
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SelectRow2 extends StatefulWidget {
  SelectRow2();

  @override
  _SelectRow2State createState() => _SelectRow2State();
}

class _SelectRow2State extends State<SelectRow2> {
  String _selectedOption2 = '';

  Container _createRadio(String option) {
    return Container(
      key: Key(option),
      margin: EdgeInsets.only(right: 10),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            _selectedOption2 = option;
          });
        },
        style: ElevatedButton.styleFrom(
          primary: option == _selectedOption2
              ? Colors.white
              : Color.fromRGBO(204, 192, 180, 1),
          onPrimary: option == _selectedOption2
              ? Color.fromRGBO(204, 192, 180, 1)
              : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: BorderSide(
              color: option == _selectedOption2
                  ? Colors.transparent
                  : Color.fromRGBO(204, 192, 180, 1),
              width: 1.0,
            ),
          ),
        ),
        child: Text(
          option,
          style: TextStyle(fontSize: 12),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 6, bottom: 6),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 65,
                  alignment: Alignment.center,
                  height: 30,
                  child: Text(
                    '甜度',
                    style: TextStyle(color: Color.fromRGBO(56, 56, 56, 1)),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Wrap(
                      children: [
                        _createRadio('糖'),
                        _createRadio('不加糖')
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SelectRow3 extends StatefulWidget {
  SelectRow3();

  @override
  _SelectRow3State createState() => _SelectRow3State();
}

class _SelectRow3State extends State<SelectRow3> {
  String _selectedOption3 = '';

  Container _createRadio(String option) {
    return Container(
      key: Key(option),
      margin: EdgeInsets.only(right: 10),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            _selectedOption3 = option;
          });
        },
        style: ElevatedButton.styleFrom(
          primary: option == _selectedOption3
              ? Colors.white
              : Color.fromRGBO(204, 192, 180, 1),
          onPrimary: option == _selectedOption3
              ? Color.fromRGBO(204, 192, 180, 1)
              : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: BorderSide(
              color: option == _selectedOption3
                  ? Colors.transparent
                  : Color.fromRGBO(204, 192, 180, 1),
              width: 1.0,
            ),
          ),
        ),
        child: Text(
          option,
          style: TextStyle(fontSize: 12),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 6, bottom: 6),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 65,
                  alignment: Alignment.center,
                  height: 30,
                  child: Text(
                    '规格',
                    style: TextStyle(color: Color.fromRGBO(56, 56, 56, 1)),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Wrap(
                      children: [
                        _createRadio('大'),
                        _createRadio('中')
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}