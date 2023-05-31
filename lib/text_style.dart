import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{
  const StyledText(this.text,{super.key});

  //here text is a instance variable that belongs to the class or the particular object that is invoked or is instantiate during the initialization of the object
  final String text;

  @override
  Widget build(context){
    return  Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 32,
              ),
    );
  }
}