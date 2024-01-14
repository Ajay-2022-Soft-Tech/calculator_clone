import 'package:calculator_bsc/components/my_button.dart';
import 'package:calculator_bsc/constaints.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var userInput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(

            children: [
              // Text('Ajay Dewangan',style: headingTextStyle),
              // Text('Ajay Dewangan',style: headingTextStyle),
              // Text('Ajay Dewangan',style: headingTextStyle),
              // Text('Ajay Dewangan',style: TextStyle(fontSize: 24,color: blueColor)),
              // Text('Ajay Dewangan',style: TextStyle(fontSize: 24,color: blueColor)),
              // Text('Ajay Dewangan',style: TextStyle(fontSize: 24,color: blueColor)),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                      ),
                      Text(userInput.toString(),style: TextStyle(fontSize: 30,color: Colors.white),),
                      Text(answer.toString(),style: TextStyle(fontSize: 30,color: Colors.white),),
                
                    ],
                  ),
                ),
              ),

              Expanded(
                flex: 2,

                child: Column(
                  children: [
                    Row(
                      children: [
                        MyButton(title: 'AC',onPress: (){
                          userInput = '';
                          answer = '';
                          setState(() {});
                        },),
                        MyButton(title: '+/-',onPress: (){
                          userInput += '+/-';
                          setState(() {});
                        },),
                        MyButton(title: '%',onPress: (){
                          userInput += '%';
                          setState(() {});
                        },),
                        MyButton(title: '/',color: Color(0xffffA00A),onPress: (){
                          userInput += '/';
                          setState(() {});
                        },),
                
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(title: '7',onPress: (){
                          userInput += '7';
                          setState(() {});
                        },),
                        MyButton(title: '8',onPress: (){
                          userInput += '8';
                          setState(() {});
                        },),
                        MyButton(title: '0',onPress: (){
                          userInput += '0';
                          setState(() {});
                        },),
                        MyButton(title: 'x',color: Color(0xffffA00A),onPress: (){
                          userInput += 'x';
                          setState(() {});
                        },),
                
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(title: '4',onPress: (){
                          userInput += '4';
                          setState(() {});
                        },),
                        MyButton(title: '5',onPress: (){
                          userInput += '4';
                          setState(() {});
                        },),
                        MyButton(title: '6',onPress: (){
                          userInput += '6';
                          setState(() {});
                        },),
                        MyButton(title: '-',color: Color(0xffffA00A),onPress: (){
                          userInput += '-';
                          setState(() {});
                        },),
                
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(title: '1',onPress: (){
                          userInput += '1';
                          setState(() {});
                        },),
                        MyButton(title: '2',onPress: (){
                          userInput += '2';
                          setState(() {});
                        },),
                        MyButton(title: '3',onPress: (){
                          userInput += '3';
                          setState(() {});
                        },),
                        MyButton(title: '+',color: Color(0xffffA00A),onPress: (){
                          userInput += '+';
                          setState(() {});
                        },),
                
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(title: '0',onPress: (){
                          userInput += '0';
                          setState(() {});
                        },),
                        MyButton(title: '.',onPress: (){
                          userInput += '.';
                          setState(() {});
                        },),
                        MyButton(title: 'DEL',onPress: (){
                          userInput = userInput.substring(0,userInput.length-1);
                          setState(() {});
                        },),
                        MyButton(title: '=',color: Color(0xffffA00A),onPress: (){
                          equalPress();
                          setState(() {});
                        },),
                
                      ],
                    ),
                
                  ],
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }

  void equalPress(){

    String finalUserInput = userInput;
    finalUserInput = userInput.replaceAll('x', '*');

    // constructor initialize
    Parser p = Parser();
    Expression expression = p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();

  }
}

