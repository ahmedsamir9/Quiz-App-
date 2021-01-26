import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _questionAnswer;
  final String _answer;
  Answer(this._questionAnswer,this._answer);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      margin:EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: RaisedButton(
          child: Text(_answer), color: Colors.blueAccent, onPressed: _questionAnswer),
    );
  }
}
