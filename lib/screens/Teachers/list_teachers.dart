// ignore_for_file: avoid_print, prefer_const_constructors, avoid_unnecessary_containers

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:oneonecourse_app/Moodel/Teacher.dart';
import 'package:oneonecourse_app/screens/Teachers/detailsTeacher.dart';
import 'package:oneonecourse_app/widgets/card_teacher.dart';
class ListTeach extends StatelessWidget {
  const ListTeach({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: CarouselSlider(
        options: CarouselOptions(
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 0.8,
        ),
        items: [
          CardTeacher(teacher: Teachers(
          rate: 4.5,
          name: 'Nguyen Van A',
          image: 'https://cdn.pixabay.com/photo/2015/03/04/22/35/head-659651_960_720.png',
          email: 'tipha230@gmail.com',
          phone: '0123456789',
          intro: 'Hello, I am a teacher',
          country: "France",
          
        ),
        onTap: (){
          print("object");
         Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsTeacher(teacher: Teachers(
          rate: 4.5,
          name: 'Nguyen Van A',
          image: 'https://cdn.pixabay.com/photo/2015/03/04/22/35/head-659651_960_720.png',
          email: 'tipha230@gmail.com',
          phone: '0123456789',
          intro: 'Hello, I am a teacher',
          country: "France",
          
        ),)));
        },
           ),
           CardTeacher(teacher: Teachers(
          rate: 4.5,
          name: 'Nguyen Van A',
          image: 'https://cdn.pixabay.com/photo/2015/03/04/22/35/head-659651_960_720.png',
          email: 'tipha230@gmail.com',
          phone: '0123456789',
          intro: 'Hello, I am a teacher',
          country: "France"
          
        ),
        onTap: (){},
           ),
           CardTeacher(teacher: Teachers(
          rate: 4.5,
          name: 'Nguyen Van A',
          image: 'https://cdn.pixabay.com/photo/2015/03/04/22/35/head-659651_960_720.png',
          email: 'tipha230@gmail.com',
          phone: '0123456789',
          intro: 'Hello, I am a teacher',
          country: "France"

          
        ),
        onTap: (){},
           ),
        ]
      ),

      ); 
  }
}