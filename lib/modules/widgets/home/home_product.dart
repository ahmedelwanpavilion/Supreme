import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:supre_me/models/static_model.dart';
import 'package:supre_me/shared/components/components.dart';
import 'package:supre_me/shared/images/images.dart';
import 'package:supre_me/shared/styles/colors.dart';

import '../../product/product_screen.dart';

class HomeProduct extends StatelessWidget {
  HomeProduct(this.productModel,this.title);
  ProductModel productModel;
  String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        navigateTo(context, ProductScreen(productModel,title));
      },
      child: Container(
        height: 148,width: 123,
        decoration: BoxDecoration(
          color: HexColor('#F5F5F5'),
          borderRadius: BorderRadiusDirectional.circular(5)
        ),
        padding:const EdgeInsetsDirectional.all(10),
        child: Column(
          children: [
            Align(
                alignment: AlignmentDirectional.topEnd,
                child: Image.asset(Images.favYes,width: 13,height: 13,)
            ),
            Expanded(child: Image.asset(productModel.image,)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                productModel.title,
                maxLines: 2,
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 6),
              ),
            ),
            Row(
              children: [
                Text.rich(
                  TextSpan(
                    text: '${productModel.price}/',
                    style: TextStyle(fontWeight: FontWeight.w600,fontSize: 9,color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'UAD',
                        style: TextStyle(fontSize: 7,color: defaultGrey),
                      )
                    ]
                  )
                ),
                const Spacer(),
                Text(
                  productModel.rate,
                  style: TextStyle(
                    color: Colors.black,fontSize: 6,fontWeight: FontWeight.w600
                  ),
                ),
                const SizedBox(width: 2,),
                Icon(Icons.star,color: HexColor('#EAA332'),size: 10,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
