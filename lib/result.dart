import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';





class Result extends StatelessWidget {

final Function resetfunc;

Result({this.resetfunc});

  @override
  Widget build(BuildContext context) {
    return Center(child: 
       Column(
         children: <Widget>[
           Text('Final',style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
           FlatButton(child:Text('Reestar Quiz') , onPressed:  resetfunc,)
         ],
       )
      );
  }
}