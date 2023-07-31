import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:supre_me/shared/images/images.dart';

import '../../../models/static_model.dart';
import '../../../shared/styles/colors.dart';
import 'choose_size.dart';

class ProductDetails extends StatelessWidget {
  ProductDetails(this.productModel,this.title);

  ProductModel productModel;
  String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Image.asset(productModel.image,height: 223,width: double.infinity,),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 20),
          child: Text(
            productModel.title,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 30.0,left: 30,bottom: 30),
          child: Row(
            children: [
              Text(
                productModel.rate,
                style: TextStyle(
                    color: Colors.black,fontWeight: FontWeight.w600
                ),
              ),
              const SizedBox(width: 2,),
              Icon(Icons.star,color: HexColor('#EAA332'),size: 23,),
              const Spacer(),
              Text.rich(
                  TextSpan(
                      text: '${productModel.price}/',
                      style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.black),
                      children: [
                        TextSpan(
                          text: 'UAD',
                          style: TextStyle(fontSize: 16,color: defaultGrey),
                        )
                      ]
                  )
              ),
            ],
          ),
        ),
        if(title == 'TV Deals')
        ChooseSize(),
        Padding(
          padding: const EdgeInsets.only(right: 30.0,left: 30,bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tr('product_description'),
                style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),
              ),
              const SizedBox(height: 5,),
              Text(
                productModel.desc,
                style: TextStyle(fontWeight: FontWeight.w700,color: Colors.grey.shade600,fontSize: 11),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0,left: 20,bottom: 20),
          child: Container(
            height: 1,width: double.infinity,
            color: Colors.grey.shade400,
          ),
        )
      ],
    );
  }
}
