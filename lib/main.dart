import 'package:flutter/material.dart';
import 'package:flutter_quizapp/result.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  // var question = [
  //   'What\'s your favorite color?',
  //   'What\'s your favorite animal?',
  //   'What\'s your favorite B?',
  //   'What\'s your favorite D?',
  //   'What\'s your favorite E?'
  // ];

  var question = [{'questionText':'whats your favorite A','answer':['CorrectA','NoCorrectA1','NoCorrectA2','NoCorrectA3','NoCorrectA4']},
                  {'questionText':'whats your favorite B','answer':['CorrectB','NoCorrectB1','NoCorrectB2','NoCorrectB3','NoCorrectB4']},
                  {'questionText':'whats your favorite C','answer':['CorrectC','NoCorrectC1','NoCorrectC2','NoCorrectC3','NoCorrectC4']},
                  {'questionText':'whats your favorite D','answer':['CorrectD','NoCorrectD1','NoCorrectD2','NoCorrectD3','NoCorrectD4']},
                  {'questionText':'whats your favorite E','answer':['CorrectE','NoCorrectE1','NoCorrectE2','NoCorrectE3','NoCorrectE4']},
                  {'questionText':'whats your favorite F','answer':['CorrectF','NoCorrectF1','NoCorrectF2','NoCorrectF3','NoCorrectF4']}];
  
  int numberquestion;

  void answerQuestion() {
    setState(() {
      if (numberquestion == (question.length - 1)) {
        numberquestion = 0;
      } else {
        numberquestion++;
      }
    });
    print('Answer 1 Chossen');
  }

  void resetQuiz() {
setState(() {
 numberquestion = 0; 
});

  }

  MyAppState() {
    numberquestion = 0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body:
         numberquestion  < (question.length - 1) ?
          Quiz( question:question, numberquestion: numberquestion, answerQuestion: answerQuestion)
           : Result(resetfunc: resetQuiz ,) ,) ,
      );
  }
}
