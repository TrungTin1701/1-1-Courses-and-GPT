// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:oneonecourse_app/Moodel/Courses.dart';
import 'package:oneonecourse_app/Moodel/Teacher.dart';
import 'package:oneonecourse_app/theme/color.dart';

import '../../widgets/custom_image.dart';

class Course_Booked extends StatefulWidget {
  Teachers teachers;
  Courses courses;
  Course_Booked({super.key, required this.teachers, required this.courses});
  

  @override 
  State<Course_Booked> createState() => _Course_BookedState();
}

class _Course_BookedState extends State<Course_Booked> {
  // Widget Card Book
  
  Widget Card_Booked (BuildContext context){

    return Card(
      margin: EdgeInsets.all(5),
      child : 
      Row(children: [
        // Teacher Header 
        Expanded(
         child: Row(
           children: [
            CustomImage(widget.teachers.image, radius: 15,height: 80),
            SizedBox(width: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                 Row(
                        children: [
                          Icon(Icons.local_activity_sharp, color: labelColor, size: 14,), 
                          SizedBox(width: 2,),
                          Text(widget.teachers.country, style: TextStyle(fontSize: 12, color: labelColor),),
                          SizedBox(width: 20,),
                          //Icon(Icon.countryIcon(teacher.country), color: labelColor, size: 14,),
                          SizedBox(width: 2,),
                        
                        ],
                      ),
                  SizedBox(height: 10,),
                 Row(
                        children: [
                           Icon(Icons.star, color: orange, size: 14,), 
                          SizedBox(width: 2,),
                          Text(widget.teachers.rate.toString(), style: TextStyle(fontSize: 12, color: labelColor),),
                        
                          //Icon(Icon.countryIcon(teacher.country), color: labelColor, size: 14,),
                          SizedBox(width: 2,),
                        ],
                      ),
          
              ],)
           ],

        )),
        Expanded(child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(DateFormat('yyyy-MM-dd').format(widget.courses.dateTime).toString(),style: TextStyle(fontSize: 14),),  
            SizedBox(height: 10,),
            Text(DateFormat('HH :mm').format(widget.courses.dateTime).toString(),style: TextStyle(fontSize: 14),),
             Row(
              children: [
                 //Button Cancel
                 Container(height: 50, width: 100,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),


                 ) ,child: Center(child :Text("Cancel")),),
                 Container(height: 50 ,width: 100,child: Center(child: Text("View")),)
              ],
             )
          ],
          
          
        ))
      ],)
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course Booked'),
      ),
      body: Column(
        children: [
          // Teacher
            Card_Booked(context),
             Card_Booked(context),
              Card_Booked(context),
               Card_Booked(context)

              ],
  
            ) );
   

  }
}
