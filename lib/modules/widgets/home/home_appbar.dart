import 'package:flutter/material.dart';
import 'package:supre_me/shared/components/components.dart';
import '../../../shared/images/images.dart';
import '../../../shared/styles/colors.dart';
import '../item_shared/default_search_form.dart';
import 'home_map.dart';

class HomeAppbar extends StatelessWidget {
  HomeAppbar({this.isHome = true});

  bool isHome;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(Images.splash,color: defaultColor,height: 59,width: 81,),
              const SizedBox(width: 20,),
              Expanded(child: DefaultSearchForm(isHome: isHome,))
            ],
          ),
          const SizedBox(height: 10,),
          InkWell(
            onTap: (){
              navigateTo(context, HomeMap());
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Images.location,height: 20,width: 14,),
                const SizedBox(width: 5,),
                Text(
                  'Delivered To Cecilia Chapman711-2880 ',
                  maxLines: 2,
                  style: TextStyle(
                    color: Colors.grey,fontSize: 9,height: 1.5
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}