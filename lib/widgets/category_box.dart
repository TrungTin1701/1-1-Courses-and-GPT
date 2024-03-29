// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/color.dart';


class CategoryBox extends StatelessWidget {
  CategoryBox({ Key? key, required this.data, this.isSelected = false, this.onTap, this.selectedColor = actionColor}) : super(key: key);
  final data;
  final Color selectedColor;
  final bool isSelected;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return 
      GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
              padding:  EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: isSelected ? inActiveColor : Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: shadowColor.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(1, 1), // changes position of shadow
                  ),
                ],
                shape: BoxShape.circle
              ),  
              child: SvgPicture.asset(data["icon"], color: isSelected ? selectedColor : textColor, width: 30, height: 30,)
            ),
            SizedBox(height: 10,),
            Text(data["name"], maxLines: 1, overflow: TextOverflow.fade, 
              style: TextStyle(color: textColor, fontWeight: FontWeight.w500),
            )
          ],
        ),
      )
      ;
  }
}