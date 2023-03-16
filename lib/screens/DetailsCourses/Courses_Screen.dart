
import 'package:flutter/material.dart';
import 'package:oneonecourse_app/Moodel/Courses.dart';
import 'package:oneonecourse_app/theme/color.dart';
import 'package:oneonecourse_app/widgets/custom_button.dart';

class CoursesScreen extends StatelessWidget {
   CoursesScreen({ required this.courses});
  final Courses courses;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Courses", style: TextStyle(color: mainColor),),
        backgroundColor: appBarColor,
        
      ),
      body: Column(children: [
          Expanded(
            flex: 2 ,
            child: Card(
              elevation: 5,
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(courses.image),
                    ),
                    title: Text(courses.name, style: TextStyle(fontSize: 30,color: Colors.black),),
                   
                    subtitle: Text(courses.description),
          
                  ),
                    SizedBox(height: 10,),  
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Price: \$${courses.price}", style: TextStyle(fontSize: 14,color: Colors.black),),
                        Text("Duration: ${courses.duration} hours", style: TextStyle(fontSize: 14,color: Colors.black),),
                      ],
                    
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround  ,
                      children: [
                        Text("Review: ${courses.review}", style: TextStyle(fontSize: 14,color: Colors.black),),
                        Text("Rating: ${courses.rating}", style: TextStyle(fontSize: 14,color: Colors.black),),
                      ],
                    
                    ),
                    CustomButton(name: "Buy Now",color: primary,isShadow: false,)
                ],
              
              ),  
            ),
          ),
          Expanded(child: Container(), flex: 2,)
          
      ],),
    );
  }
}