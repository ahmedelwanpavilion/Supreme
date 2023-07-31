import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:supre_me/layout/layout_cubit/layout_cubit.dart';
import 'package:supre_me/layout/layout_cubit/layout_states.dart';
import 'package:supre_me/modules/widgets/item_shared/default_button.dart';
import 'package:supre_me/shared/components/components.dart';
import 'package:supre_me/shared/images/images.dart';
import 'package:supre_me/shared/styles/colors.dart';

import '../widgets/no_items/no_products.dart';
import 'checkout_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LayoutCubit, LayoutStates>(
  listener: (context, state) {},
  builder: (context, state) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Text(
            tr('cart'),
            style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 20,),
          //Expanded(child: NoProducts()),
          Expanded(
            child: Stack(
              children: [
                ListView.separated(
                    itemBuilder: (c,i)=>CartItem(),
                    separatorBuilder: (c,i)=>const SizedBox(height: 20,),
                    padding:const EdgeInsets.only(bottom: 70),
                    itemCount: 7
                ),
                Align(
                  alignment: AlignmentDirectional.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 50.0,left: 50,bottom: 20),
                    child: DefaultButton(
                        text: tr('checkout'),
                        onTap: (){
                          navigateTo(context, CheckoutScreen());
                        }
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  },
);
  }
}


class CartItem extends StatelessWidget {
  const CartItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 121,width: double.infinity,
      decoration: BoxDecoration(
        color: HexColor('#F5F5F5'),
        borderRadius: BorderRadiusDirectional.circular(10)
      ),
      padding:const EdgeInsets.all(15),
      child: Row(
        children: [
          Image.asset(Images.ad,height: 100,width: 120,fit: BoxFit.cover,),
          const SizedBox(width: 10,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Name Of Product Name Of Product  ',
                        maxLines: 2,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,color: Colors.black,height: 1.1,
                          fontSize: 13.5
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Text(
                      '4.6',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,fontSize: 11
                      ),
                    ),
                    Icon(Icons.star,size: 18,color: HexColor('#EAA332'),)
                  ],
                ),
                Expanded(
                  child: Text.rich(
                      TextSpan(
                          text: '3000/',
                          style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.black),
                          children: [
                            TextSpan(
                              text: 'UAD',
                              style: TextStyle(fontSize: 12.5,color: defaultGrey),
                            )
                          ]
                      )
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 16,
                      width: 24,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(3),
                        border: Border.all(color: HexColor('#787878'))
                      ),
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        '1',
                        style: TextStyle(
                            fontSize: 11,fontWeight: FontWeight.w600,height: 1.5,
                          color: HexColor('#787878')
                        ),
                      ),
                    ),
                    const Spacer(),
                    Image.asset(Images.trash,width: 20,height: 20,)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

