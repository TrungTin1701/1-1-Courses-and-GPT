// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oneonecourse_app/Moodel/Teacher.dart';
import 'package:oneonecourse_app/widgets/custom_image.dart';

import '../theme/color.dart';

class CardTeacher extends StatelessWidget {
  CardTeacher({required this.teacher, this.onTap});
  Teachers teacher;
  final GestureTapCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.all(10),
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(1, 1), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImage(
                  teacher.image,
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
                      teacher.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      teacher.email,
                      style: TextStyle(fontSize: 14, color: textColor),
                    ),
                    SizedBox(
                      height: 15,
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
                          teacher.phone,
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
                          teacher.rate.toString(),
                          style: TextStyle(fontSize: 12, color: labelColor),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            //Intro
            Text(
              teacher.intro,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: textColor, fontSize: 14, fontWeight: FontWeight.w400),
            ),

            SizedBox(
              height: 10,
            ),
            // Wrap Type of Skill
            Row(
              children: [
                Wrap(
                  children: teacher.type
                      .map((e) => Container(
                            margin: EdgeInsets.only(right: 5, bottom: 5),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: green,
                            ),
                            child: Text(
                              e.name.toString(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ))
                      .toList(),
                ),
              ],
            ),
            //Button on right
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: orange,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Book",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      SvgPicture.asset(
                        "assets/icons/clock.svg",
                        color: Colors.white,
                        height: 10,
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
