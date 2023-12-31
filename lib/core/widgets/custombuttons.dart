import 'package:flutter/material.dart';
import 'package:fruitsmarket/core/utils/size_config.dart';
import 'package:fruitsmarket/core/widgets/space_widget.dart';

import '../constants.dart';
//customgeneralbutton
class customgeneralbutton extends StatelessWidget {
  const customgeneralbutton({Key? key, this.text, this.onTap})
      : super(key: key);
  final String? text;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color:  Color(0xff88C7E5),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: Text(
            text!,
            style: TextStyle(
              fontSize: 14,
              color: Color(0xff7f4412),
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}
class CustomButtonWithIcon extends StatelessWidget {
  const CustomButtonWithIcon(
      {Key? key, required this.text, this.onTap, this.iconData, this.color})
      : super(key: key);
  final String text;
  final IconData? iconData;
  final VoidCallback? onTap;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Color(0xFF921B1B),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: color,
            ),
            HorizintalSpace(2),
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
                fontSize: 12,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}

