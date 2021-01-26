import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget{
  String _question;

  Question(this._question);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
margin: EdgeInsets.all(8),
      color: Colors.black,
      child: Text(
        _question,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 32 ,color: Colors.white),
      ),
    );
  }

}