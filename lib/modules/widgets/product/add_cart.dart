import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:supre_me/shared/images/images.dart';
import 'package:supre_me/shared/styles/colors.dart';

import '../item_shared/default_button.dart';

class AddCart extends StatelessWidget {
  const AddCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Expanded(
            child: DefaultButton(
              text: tr('add_to_cart'),
              onTap: (){},
            ),
          ),
          const SizedBox(width: 10,),
          Image.asset(Images.cart,color: defaultColor,width: 31,height: 26,)
        ],
      ),
    );
  }
}
