

import 'package:badges/badges.dart' as badges ;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../theme/color.dart';


class NotificationBox extends StatelessWidget {
  NotificationBox({ Key? key, this.onTap, this.size = 5, this.notifiedNumber = 0}) : super(key: key);
  final GestureTapCallback? onTap;
  final int notifiedNumber;
  final double size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(size),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: appBarColor,
          border: Border.all(color: Colors.grey.withOpacity(.3)),
        ),
        child: notifiedNumber > 0 ? box : SvgPicture.asset("assets/icons/bell.svg", width: 20, height: 20,)
    
      ),
    );
  }
}
extension on Widget {
  Widget get box => badges.Badge(
          position: badges.BadgePosition.topEnd(top: -7, end: -0),
          badgeStyle: badges.BadgeStyle(badgeColor: actionColor),
          badgeContent: Text('', style: TextStyle(color: Colors.white),),
          child: SvgPicture.asset("assets/icons/bell.svg", width: 20, height: 20,)
        );
  
}
