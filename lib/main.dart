import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
        var question = [
          'What\'s your favorite color?',
          'What\'s your favorite animal?',
          'What\'s your favorite B?',
          'What\'s your favorite D?',
          'What\'s your favorite E?'];
    int numberquestion;  
    
    void answerQuestion()
    {
      print('Answer 1 Chossen');
      
      if(numberquestion == (question.length - 1))
        {
            numberquestion = 0; 
        }
        else
        {
            numberquestion++;
        } 
    }

    MyApp()
    {
        numberquestion = 0;
    }

    @override
    Widget build(BuildContext context)
    {
  
        return MaterialApp(
        home: Scaffold(appBar:AppBar(title:Text('My First App'), 
             
           ),
           body: Column(children: [
                     Text(question.elementAt(numberquestion)),
                     RaisedButton(child: Text('Answer 1') , onPressed: answerQuestion),
                     RaisedButton(child: Text('Answer 2') , onPressed: answerQuestion),
                     RaisedButton(child: Text('Answer 3') , onPressed: answerQuestion), 
            ],
           ),  
          ),
        );
    }
}