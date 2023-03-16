// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:oneonecourse_app/Moodel/Courses.dart';
import 'package:oneonecourse_app/screens/DetailsCourses/Course_Booked.dart';
import 'package:oneonecourse_app/screens/DetailsCourses/Courses_Screen.dart';
import 'package:oneonecourse_app/screens/DetailsCourses/HistoryCourse.dart';
import 'package:oneonecourse_app/screens/Teachers/detailsTeacher.dart';
import 'package:oneonecourse_app/screens/VideoCall.dart';
import 'package:oneonecourse_app/screens/chart.dart';
import 'package:oneonecourse_app/screens/home.dart';
import 'package:oneonecourse_app/screens/root_app.dart';
import 'Moodel/Teacher.dart';
import 'screens/DetailsCourses/Detail_Course.dart';
import 'screens/LoginPage/login_Page.dart';
import 'theme/color.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Online Course App',
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => RootApp(),
        '/chart': (context) => ChatPage(),
        '/detailsteacher': (context) => ChatPage(),
        'detailscourses': (context) => CoursesScreen(courses: Courses(
        name: "Flutter",
        image: "https://cdn.pixabay.com/photo/2017/08/05/11/16/logo-2582748_1280.png",
        description: "Flutter is Google’s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source.",
        teacher: "Nguyen Van A",
        category: "Mobile",
        price: "Free",
        duration: "2h",
        review: "100",
        session: "10",
        rating: "4.5",
        dateTime: DateTime.now(),

        ) ),
        
      },
      theme: ThemeData(
        primaryColor: primary,
      ),
      home:HistoryCourse(teacher: Teachers(
      rate: 4.5,
          name: 'Nguyen Van A',
          image: 'https://cdn.pixabay.com/photo/2015/03/04/22/35/head-659651_960_720.png',
          email: 'tipha230@gmail.com',
          phone: '0123456789',
          intro: 'Hello, I am a teacher',
          country: "France",

      
      ),
      course: Courses(
            name: "Flutter",
        image: "https://cdn.pixabay.com/photo/2017/08/05/11/16/logo-2582748_1280.png",
        description: "Flutter is Google’s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source.",
        teacher: "Nguyen Van A",
        category: "Mobile",
        price: "Free",
        duration: "2h",
        review: "100",
        session: "10",
        rating: "4.5",
        dateTime: DateTime.now(),
      ),
      ),
    );
  }

}