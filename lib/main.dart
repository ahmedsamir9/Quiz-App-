import 'package:first_app/Answer.dart';
import 'package:first_app/Question.dart';
import 'package:first_app/Utils/Constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return _MyAPPState();
  }

}
class _MyAPPState extends State<MyApp> {

  var _questionList = [
    {
      "Question":"What is Your favourite Color?",
      "Answer":["black","red","yellow","green"]
    },
    {
      "Question":"What is Your favourite Animal?",
      "Answer":["Duck","Dog","Cat"]
    },
    {
      "Question":"Do you love me ?",
      "Answer":["Do U","Do U","Do U"]
    },
  ];
  var _questionNumber= 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text("First App"),),
    body: Column(
      children: [
        Question(_questionList[_questionNumber][Constants.QUESTION_NAME_KEY]),
        ...(_questionList[_questionNumber][Constants.QUESTION_ANSWER_KEY] as List<String>).map((answer) {
          return Answer(printAnswer, answer);
        }
        ),

      ],
    ),
    ),
    );
  }
  void printAnswer(){
      if(_questionNumber < 1){
        setState(() {
          _questionNumber++;
        });
      }
  }
}
