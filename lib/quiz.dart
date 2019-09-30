import 'package:flutter/cupertino.dart';
import './question.dart';
import './answer.dart';

class Quiz  extends StatelessWidget {

  final List<Map<String,Object>> question; 
  final int numberquestion;
  final Function answerQuestion;

  Quiz({this.question,this.numberquestion,this.answerQuestion});
   
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Question(question[numberquestion]['questionText']),
            ...(question[numberquestion]['answer'] as List<String>).map((answer) {
              return Answer(answerQuestion, answer);
            }).toList()
          ],
        );
  }
}