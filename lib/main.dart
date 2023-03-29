// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:oneonecourse_app/Moodel/Courses.dart';
import 'package:oneonecourse_app/screens/DetailsCourses/Courses_Screen.dart';
import 'package:oneonecourse_app/screens/chart.dart';
import 'package:oneonecourse_app/screens/root_app.dart';
import 'screens/LoginPage/login_Page.dart';
import 'theme/color.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        builder: DevicePreview.appBuilder,
        locale: DevicePreview.locale(context),
        debugShowCheckedModeBanner: false,
        title: 'Online Course App',
        routes: {
          '/login': (context) => LoginPage(),
          '/home': (context) => RootApp(),
          '/chart': (context) => ChatPage(),
          '/detailsteacher': (context) => ChatPage(),
          'detailscourses': (context) => CoursesScreen(
                  courses: Courses(
                name: "Flutter",
                image:
                    "https://cdn.pixabay.com/photo/2017/08/05/11/16/logo-2582748_1280.png",
                description:
                    "Flutter is Google’s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source.",
                teacher: "Nguyen Van A",
                category: "Mobile",
                price: "Free",
                duration: "2h",
                review: "100",
                session: "10",
                rating: "4.5",
                dateTime: DateTime.now(),
              )),
        },
        theme: ThemeData(
          primaryColor: primary,
        ),
        home: RootApp());
  }
}
