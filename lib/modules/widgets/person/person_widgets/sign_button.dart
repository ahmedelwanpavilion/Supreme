import 'package:flutter/material.dart';
import 'package:supre_me/shared/images/images.dart';
import 'package:supre_me/shared/styles/colors.dart';

class SignButton extends StatelessWidget {
  SignButton({
    required this.image,
    required this.text,
    required this.onTap,
});


  String text;
  String image;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 43,width: 43,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: defaultColor,width: 2)
            ),
            alignment: AlignmentDirectional.center,
            child: Image.asset(image,width: 26,height: 26,),
          ),
          Text(
            text,
            style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
