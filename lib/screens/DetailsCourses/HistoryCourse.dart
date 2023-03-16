import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';
import 'package:oneonecourse_app/Moodel/Courses.dart';
import 'package:oneonecourse_app/Moodel/Teacher.dart';
import 'package:oneonecourse_app/screens/DetailsCourses/Course_Booked.dart';
import 'package:oneonecourse_app/theme/color.dart';
import 'package:oneonecourse_app/widgets/custom_button.dart';
import 'package:oneonecourse_app/widgets/custom_image.dart';
String dateFormatter(DateTime date) {
  dynamic dayData =
      '{ "1" : "Mon", "2" : "Tue", "3" : "Wed", "4" : "Thur", "5" : "Fri", "6" : "Sat", "7" : "Sun" }';

  dynamic monthData =
      '{ "1" : "Jan", "2" : "Feb", "3" : "Mar", "4" : "Apr", "5" : "May", "6" : "June", "7" : "Jul", "8" : "Aug", "9" : "Sep", "10" : "Oct", "11" : "Nov", "12" : "Dec" }';

  return json.decode(dayData)['${date.weekday}'] +
      ", " +
      date.day.toString() +
      " " +
      json.decode(monthData)['${date.month}'] +
      " " +
      date.year.toString();
}
// ignore: must_be_immutable
class HistoryCourse extends StatefulWidget {
  Teachers teacher;
  Courses course;
  
  
   HistoryCourse({required this.teacher, required this.course});

  @override
  State<HistoryCourse> createState() => _HistoryCourseState();
}

class _HistoryCourseState extends State<HistoryCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("History",style: TextStyle(color: textColor),),backgroundColor: appBarColor,),
      body: Card(borderOnForeground: true,
      elevation: 1,
      shadowColor: Colors.black,

      color: Colors.white.withOpacity(0.5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start  ,
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 1,
            child: Text(dateFormatter(widget.course.dateTime),style: TextStyle(color: textColor),)),
            Expanded(flex: 1,child: Column(

              children: [
                CustomImage( widget.teacher.image,),
                //country
               RichText(text: TextSpan(
                 children: [
                   WidgetSpan(child: Icon(Icons.local_activity_sharp,color: textColor,size: 15,)),
                   TextSpan(text: widget.teacher.country,style: TextStyle(color: textColor),)
                 ]  
                ),),
                Text(widget.course.name,style: TextStyle(color: textColor),),
                Text(widget.course.teacher,style: TextStyle(color: textColor),),
              ],
            )),
          //Button Record
          Expanded(flex: 1,child: 
            ElevatedButton(onPressed: (){}, child: Text("Record",style: TextStyle(color: textColor,fontWeight: FontWeight.bold),),style: ElevatedButton.styleFrom(primary: Colors.blue),)
          )
          
          ],
        ),
        // Review from Tutor
        SizedBox(height: 10,),
        
       Container(
        child: Row(
          children: [
            Column(children: [
               Text("Session Review ",style: TextStyle(color: textColor,fontWeight: FontWeight.bold),),
            
            SizedBox(height: 10,),
            
            Text("Session 1 , 22:00 - 22:50 ",style: TextStyle(color: textColor,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Row(
              children: [
                Text("Speaking",style: TextStyle(color: textColor,fontWeight: FontWeight.bold),),
                SizedBox(width: 10,),
                //Star
                for (var i = 0; i < 5; i++)
                Icon(Icons.star,color: Colors.yellow,size: 15,)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text("Writing",style: TextStyle(color: textColor,fontWeight: FontWeight.bold),),
                SizedBox(width: 10,),
                //Star
                for (var i = 0; i < 5; i++)
                Icon(Icons.star,color: Colors.yellow,size: 15,)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text("Listening",style: TextStyle(color: textColor,fontWeight: FontWeight.bold),),
                SizedBox(width: 10,),
                //Star
                for (var i = 0; i < 5; i++)
                Icon(Icons.star,color: Colors.yellow,size: 15,)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text("Reading",style: TextStyle(color: textColor,fontWeight: FontWeight.bold),),
                SizedBox(width: 10,),
                //Star
                for (var i = 0; i < 5; i++)
                Icon(Icons.star,color: Colors.yellow,size: 15,)
              ],
            ),
            ]),
          ],
        ),
       )
      ]),

      
      )
    );
  }
}