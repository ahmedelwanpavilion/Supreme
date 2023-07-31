import 'package:flutter/material.dart';
import 'package:supre_me/shared/styles/colors.dart';

import '../widgets/home/home_grid_products.dart';
import '../widgets/item_shared/grid_product.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen(this.category);
  String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  children: [
                    InkWell(
                      onTap: ()=>Navigator.pop(context),
                      child: Icon(Icons.arrow_back),
                    ),
                    const SizedBox(width: 10,),
                    Text.rich(
                      TextSpan(
                        text: 'Home -> ',
                        style: TextStyle(fontSize: 10,color: Colors.black),
                        children: [
                          TextSpan(
                            text: category,
                            style: TextStyle(color: defaultColor,fontSize: 10)
                          )
                        ]
                      )
                    ),
                  ],
                ),
              ),
              Expanded(child: GridProducts())
            ],
          ),
        ),
      ),
    );
  }
}
