import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:supre_me/layout/layout_cubit/layout_cubit.dart';
import 'package:supre_me/layout/layout_screen.dart';
import 'package:supre_me/modules/widgets/item_shared/default_button.dart';
import 'package:supre_me/shared/components/components.dart';
import 'package:supre_me/shared/images/images.dart';
import 'package:supre_me/shared/styles/colors.dart';

class OrderSuccess extends StatelessWidget {
  const OrderSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(Images.orderSuccess,height: 326,width: 258,),
          Padding(
            padding: const EdgeInsets.only(top: 20.0,bottom: 80),
            child: Text.rich(
                TextSpan(
                    text: tr('order_confirmed'),
                    style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500,color: Colors.black,height: 1.5),
                    children: [
                      TextSpan(
                        text: '265545',
                        style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500,color: defaultColor),
                      )
                    ]
                ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: DefaultButton(
              onTap: (){
                LayoutCubit.get(context).changeIndex(0);
                navigateAndFinish(context, LayoutScreen());
              },
              text: tr('to_homepage'),
            ),
          ),
          TextButton(
              onPressed: (){
                LayoutCubit.get(context).changeIndex(3);
                navigateAndFinish(context, LayoutScreen());
              },
              child: Text(
                tr('order_history'),
                style: TextStyle(
                  color: defaultColor,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              )
          )
        ],
      ),
    );
  }
}
