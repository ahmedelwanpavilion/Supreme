import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:supre_me/modules/widgets/item_shared/default_button.dart';
import 'package:supre_me/shared/images/images.dart';

import '../../../../shared/styles/colors.dart';

class LogDialog extends StatelessWidget {
  LogDialog({
    required this.onTap,
    required this.image,
    required this.textButton,
});
  String image;
  String textButton;
  VoidCallback onTap;


  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding:const EdgeInsets.symmetric(horizontal: 20),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(20)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80.0,bottom: 20),
            child: Image.asset(image,height: 201,width: 271,),
          ),
          InkWell(
            onTap: onTap,
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:40.0),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: defaultColor,
                  borderRadius: BorderRadiusDirectional.circular(14)
                ),
                alignment: AlignmentDirectional.center,
                child: Text(
                  tr(textButton),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          TextButton(
              onPressed: ()=>Navigator.pop(context),
              child: Text(
                tr('cancel'),
                style: TextStyle(
                  color: defaultColor,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
          ),
          const SizedBox(height: 10,),
        ],
      )
    );
  }
}
