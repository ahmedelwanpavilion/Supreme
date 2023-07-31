import 'package:flutter/material.dart';

import '../../../models/static_model.dart';
import 'home_product.dart';

class HomeGridProducts extends StatelessWidget {
  const HomeGridProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Viral Deals',
          style: TextStyle(
            color: Colors.black,fontWeight: FontWeight.w500,fontSize: 12
          ),
        ),
        const SizedBox(height: 10,),
        SizedBox(
          height: 320,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 15,
              mainAxisSpacing: 10,
              childAspectRatio: 1/1.3
            ),
            itemCount: products.length,
            itemBuilder: (c,i)=>HomeProduct(products[i],''),
          ),
        )
      ],
    );
  }
}
