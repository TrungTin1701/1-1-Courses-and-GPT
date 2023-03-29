// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, use_key_in_widget_constructors, unused_import
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oneonecourse_app/Moodel/Teacher.dart';
import '../../theme/color.dart';
import '../../widgets/custom_image.dart';
import 'package:country_icons/country_icons.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class DetailsTeacher extends StatefulWidget {
  const DetailsTeacher({required this.teacher});
  final Teachers teacher;

  @override
  State<DetailsTeacher> createState() => _DetailsTeacherState();
}

class _DetailsTeacherState extends State<DetailsTeacher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImage(
                  widget.teacher.image,
                  radius: 15,
                  height: 80,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.teacher.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      widget.teacher.email,
                      style: TextStyle(fontSize: 14, color: textColor),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        // Acessing the country flag from SVG Flag
                        Container(
                          width: 10,
                          height: 10,
                          child: SvgPicture.asset(
                            "assets/flags/1x1/ac.svg",
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          widget.teacher.country,
                          style: TextStyle(fontSize: 12, color: labelColor),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        //Icon(Icon.countryIcon(teacher.country), color: labelColor, size: 14,),
                        SizedBox(
                          width: 2,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.schedule_rounded,
                          color: labelColor,
                          size: 14,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          widget.teacher.phone,
                          style: TextStyle(fontSize: 12, color: labelColor),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: orange,
                          size: 14,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          widget.teacher.rate.toString(),
                          style: TextStyle(fontSize: 12, color: labelColor),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.teacher.intro,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: textColor, fontSize: 24, fontWeight: FontWeight.w400),
            ),
            Expanded(
              flex: 1,
              child: Container(
                  height: 200,
                  child: Card(
                      elevation: 5, child: Center(child: Text("Video  ")))),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Card(
                    elevation: 5,
                    child: TableCalendar(
                      firstDay: DateTime.utc(2021, 1, 1),
                      lastDay: DateTime.utc(2023, 12, 31),
                      focusedDay: DateTime.now(),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
