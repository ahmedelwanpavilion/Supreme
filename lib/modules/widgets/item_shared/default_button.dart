import 'package:flutter/material.dart';

import '../../../shared/styles/colors.dart';

class DefaultButton extends StatelessWidget {
  DefaultButton({
    required this.text,
    required this.onTap,
    this.height = 50,
    this.width = double.infinity,
    this.color,
    this.textColor,
  });


  double height;
  double width;
  Color? color;
  String text;
  Color? textColor;
  VoidCallback onTap;



  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: color??defaultColor,
        ),
        alignment: AlignmentDirectional.center,
        child: Text(
          text,
          style: TextStyle(
            color: textColor??Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
