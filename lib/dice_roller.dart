import 'dart:math';
import 'package:flutter/material.dart';


final randomizer = Random();

//So using the StatefulWidget--> we always use 2 class
//StatefulWidget is used when there is internal state changes and that will impact the framework of the UI ------it allows us to manage the state and render UI with updated state

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState(){
    //will return value that is of State Object--> generic value

    return _DiceRollerState();
    //the State that the function return is objetained by the private class
  }
}

class _DiceRollerState extends State<DiceRoller>{
// here '_' --> represents the the class is private that can be used only this particular file even if the file is imported into other file

  var currentDiceRoll = 1;

  void rollDice(){
    //every time when the button is clicked, new state is generated so to render the updated UI state setState() funciton is used 

    //if you change the internal state without calling setState(), the updated state might not change the UI in the subtree

    // calling setState() funciton immediately invoke the callback function, notifying the framework that the internal state of the object has changes and this might have impact on the UI so it will schedule the build funciton for the State object

    //main objective is to invoke or call the build() function when the internal state of the object is changed so for that we use setState() function indeed
    setState(() {

      // initializing Random() avoids memory occupancy each time when the Random.nextInt() is used so using or initializing to randomizer one object is created so only one time the memory is used/ occupied then object is used to generate the random number each time when the button is clicked
      currentDiceRoll = randomizer.nextInt(6)+1;
      // print(currentDiceRoll);
    });
  }

  @override
  Widget build(context){
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(

              // to use the variale inside the string we use '$' sign and variable name as given below
              
              'assets/images/Dice-$currentDiceRoll.png',
              width: 200,
            ),
            const SizedBox(height: 20,),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                // padding: EdgeInsets.only(
                //top: 20,
                //),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                )
              ),
              child: const Text('Roll Dice'),
              ),
          ],
        );
  }
}