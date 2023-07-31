import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:supre_me/layout/layout_cubit/layout_cubit.dart';
import '../../../shared/images/images.dart';
import '../item_shared/default_button.dart';

class NoProducts extends StatelessWidget {
  const NoProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(Images.noProducts,height: 240,width: 206,),
          Text(
            tr('no_products'),
            style:const TextStyle(
                color: Colors.black,fontSize: 30,fontWeight: FontWeight.w500
            ),
          ),
          const SizedBox(height: 20,),
          DefaultButton(
              text: tr('start_shopping'),
              onTap: (){
                LayoutCubit.get(context).changeIndex(0);
              }
          )
        ],
      ),
    );
  }
}
