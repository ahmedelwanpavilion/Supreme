import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:supre_me/modules/widgets/person/person_widgets/sign_button.dart';
import 'package:supre_me/shared/images/images.dart';

import '../../../../shared/styles/colors.dart';

class Hotline extends StatelessWidget {
  const Hotline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 43,width: 43,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: defaultColor,width: 2)
          ),
          alignment: AlignmentDirectional.center,
          child: Image.asset(Images.phone,width: 26,height: 26,),
        ),
        const SizedBox(width: 10,),
        Text(
          tr('hot_line'),
          style: TextStyle(
            color: defaultColor,fontSize: 16
          ),
        )
      ],
    );
  }
}
