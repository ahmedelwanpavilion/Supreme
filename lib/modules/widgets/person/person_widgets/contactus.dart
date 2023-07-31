import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:supre_me/shared/images/images.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0),
      child: Column(
        children: [
          Text(
            tr('contactus'),
            style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,height: 1),
          ),
          const SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Images.facebook,width: 24,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Image.asset(Images.instagram,width: 24,),
              ),
              Image.asset(Images.linkedin,width: 24,),
            ],
          )
        ],
      ),
    );
  }
}
