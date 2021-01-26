import 'package:first_app/Answer.dart';
import 'package:first_app/Question.dart';
import 'package:first_app/Utils/Constants.dart';
import 'package:first_app/result.dart';
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
  var totalScore =0;
  final _questionList =const  [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];
  var _questionNumber= 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text("First App"),),
    body: _questionNumber < _questionList.length ?Column(
      children: [
        Question(_questionList[_questionNumber][Constants.QUESTION_NAME_KEY]),
        ...(_questionList[_questionNumber][Constants.QUESTION_ANSWER_KEY] as List<Map<String, Object>>).map((answer) {
        return Answer(()=>printAnswer(answer[Constants.QUESTION_ANSWER_SCORE]as int), answer[Constants.QUESTION_ANSWER_NAME]);
        }
        ),

      ],
    ):Result(totalScore, restartGame),
    ),
    );
  }
  void printAnswer(int score){
    totalScore+=score;
      if(_questionNumber < _questionList.length){
        setState(() {
          _questionNumber++;
        });
      }
  }
  void restartGame(){
    setState(() {
      _questionNumber =0;
      totalScore =0;
    });

  }
}
