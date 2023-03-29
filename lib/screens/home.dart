// ignore_for_file: library_private_types_in_public_api, avoid_unnecessary_containers, prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables, unnecessary_brace_in_string_interps

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:oneonecourse_app/screens/Teachers/list_teachers.dart';
import 'package:oneonecourse_app/theme/color.dart';
import 'package:oneonecourse_app/utils/data.dart';
import 'package:oneonecourse_app/widgets/category_box.dart';
import 'package:oneonecourse_app/widgets/customClipper.dart';
import 'package:oneonecourse_app/widgets/customsearch.dart';
import 'package:oneonecourse_app/widgets/notification_box.dart';
import 'package:oneonecourse_app/widgets/recommend_item.dart';

const colorizeColors = [
  Colors.purple,
  Colors.blue,
  Colors.yellow,
  Colors.red,
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appBgColor,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: appBarColor,
              pinned: true,
              snap: true,
              floating: true,
              title: getAppBar(),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => buildBody(),
                childCount: 1,
              ),
            )
          ],
        ));
  }

  Widget getAppBar() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnimatedTextKit(animatedTexts: [
                ColorizeAnimatedText(
                  'Good Morning!',
                  textStyle: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                  colors: colorizeColors,
                ),
              ]),
              SizedBox(
                height: 5,
              ),
            ],
          )),
          NotificationBox(
            notifiedNumber: 1,
            onTap: () {
              print("hhehehe");
            },
          )
        ],
      ),
    );
  }

  buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              ClipPath(
                clipper: BottomClipper(),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        blue.withOpacity(0.8),
                        Color(0xFF0083B0),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  AnimatedTextKit(animatedTexts: [
                    ColorizeAnimatedText(
                      'Welcome to OneOneCourse',
                      textStyle: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                      colors: colorizeColors,
                    ),
                  ]),
                  CustomSearchField(
                    hintField: "Find Course, Teachers",
                    backgroundColor: Colors.white,
                  ),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              getCategories(),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recommended",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: textColor),
                    ),
                  ],
                ),
              ),
              ListTeach(),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Teachers",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: textColor),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(fontSize: 14, color: darker),
                    ),
                  ],
                ),
              ),
              ListTeach(),
            ]),
          )
        ],
      ),
    );
  }

  int selectedCollection = 0;
  getCategories() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(15, 10, 0, 10),
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
              categories.length,
              (index) => Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: CategoryBox(
                    selectedColor: Colors.black.withOpacity(0.5),
                    isSelected: selectedCollection == index,
                    data: categories[index],
                    onTap: () {
                      setState(() {
                        selectedCollection = index;
                        print("huhuh=>" "${selectedCollection}");
                      });
                    },
                  )))),
    );
  }

  getRecommend() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
              recommends.length,
              (index) => Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: RecommendItem(
                    data: recommends[index],
                    onTap: () {},
                  )))),
    );
  }
}
