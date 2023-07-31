import 'package:flutter/material.dart';

import '../../models/static_model.dart';
import '../widgets/home/ads.dart';
import '../widgets/home/brands.dart';
import '../widgets/home/categories.dart';
import '../widgets/home/home_appbar.dart';
import '../widgets/home/home_grid_products.dart';
import '../widgets/home/home_list_product.dart';
import '../widgets/home/sponsored_ad.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeAppbar(),
          Ads(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Categories(),
                SponsoredAds(),
                HomeGridProducts(),
                ListProducts(title: 'TV Deals',products: tvs),
                SponsoredAds(),
                Brands()
              ],
            ),
          )
        ],
      ),
    );
  }
}
