import 'package:flutter/material.dart';
import 'package:supre_me/shared/images/images.dart';

import '../../../shared/styles/colors.dart';

class ProductAppbar extends StatelessWidget {
  const ProductAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 10),
      child: Row(
        children: [
          InkWell(onTap: ()=>Navigator.pop(context), child: Icon(Icons.arrow_back)),
          const SizedBox(width: 15,),
          Image.asset(Images.splash,color: defaultColor,height: 59,width: 81,),
          const Spacer(),
          Column(
            children: [
              Image.asset(Images.favYes,width: 19,),
              const SizedBox(height: 5,),
              Image.asset(Images.share,width: 19,),
            ],
          ),
        ],
      ),
    );
  }
}
