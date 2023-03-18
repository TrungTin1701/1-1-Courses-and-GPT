// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
   CustomButton({ this.name , this.onTap, this.color, this.isShadow = true}) ;
   final String ? name ;
   final GestureDetector ? onTap;
  final Color ? color;
  final bool ? isShadow;

  @override
  Widget build(BuildContext context) {
    return Container (
      height:  50,
      width:  200,
      margin: EdgeInsets.all(10),
     
      decoration: BoxDecoration( borderRadius: BorderRadius.circular(50),
      boxShadow: [

        BoxShadow(
          color: color??Colors.black.withOpacity(isShadow! ? 0.4 : 0),
          //offset: Offset(2, 50),
          blurRadius: 5.8
        )
      ]

      ),
      child: Center(child: Text(name??"Button")),
    
    );
    }
  }
