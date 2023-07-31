import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:supre_me/modules/widgets/home/home_list_product.dart';

import '../../models/static_model.dart';
import '../widgets/product/add_cart.dart';
import '../widgets/product/features.dart';
import '../widgets/product/product_appbar.dart';
import '../widgets/product/product_details.dart';
import '../widgets/product/reviews.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen(this.productModel,this.title);

  ProductModel productModel;
  String title;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ProductAppbar(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ProductDetails(productModel,title),
                    Features(),
                    Reviews(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: ListProducts(title:tr('related_products'),products: products),
                    ),
                    AddCart()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
