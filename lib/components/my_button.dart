import 'package:calculator_bsc/constaints.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {



  final String title ;
  final Color color ;
  final VoidCallback onPress;
  const MyButton({
    super.key,
    required this.title,
    this.color= const Color(0xffA5A5A5),
    required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: InkWell(
          onTap: onPress,
          child: Container(


            height: 80,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color
            ),
            child: Center(child: Text(title,style: TextStyle(color: Colors.white,fontSize: 20),)),
          ),
        ),
      ),
    );
    //   Padding(
    //   padding: const EdgeInsets.symmetric(vertical: 10),
    //   child:
    //
    //   Container(
    //     height: 50,
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(10),
    //       color: Colors.blue,
    //     ),
    //     child: Center(child: Text(title+" "+subtitle,style:TextStyle(color: whiteColor),)),
    //   ),
    // );
  }
}
