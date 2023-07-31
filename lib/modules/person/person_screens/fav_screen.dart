import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:supre_me/modules/widgets/item_shared/default_appbar.dart';
import 'package:supre_me/shared/styles/colors.dart';

import '../../widgets/item_shared/grid_product.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              DefaultAppbar(tr('favorites')),
              Expanded(child: GridProducts())
            ],
          ),
        ),
      ),
    );
  }
}
