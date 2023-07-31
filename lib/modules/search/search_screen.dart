import 'package:flutter/material.dart';

import '../widgets/home/home_appbar.dart';
import '../widgets/item_shared/grid_product.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>FocusManager.instance.primaryFocus?.unfocus(),
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      child: Column(
        children: [
          HomeAppbar(isHome: false),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 20,left: 20,top: 20,bottom: 10),
              child: GridProducts(),
            ),
          )
        ],
      ),
    );
  }
}
