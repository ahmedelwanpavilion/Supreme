import 'package:flutter/material.dart';
import 'package:supre_me/modules/widgets/home/home_product.dart';

import '../../../models/static_model.dart';

class ListProducts extends StatelessWidget {
  ListProducts({required this.title,required this.products});
  String title;
  List<ProductModel> products;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                color: Colors.black,fontWeight: FontWeight.w500,fontSize: 12
            ),
          ),
          const SizedBox(height: 10,),
          SizedBox(
            height: 150,
            child: ListView.separated(
                itemBuilder: (c,i)=>HomeProduct(products[i],title),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (c,i)=>const SizedBox(width: 15,),
                itemCount: products.length
            ),
          )
        ],
      ),
    );
  }
}
