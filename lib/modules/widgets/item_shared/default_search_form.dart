import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../layout/layout_cubit/layout_cubit.dart';
import '../../../shared/images/images.dart';

class DefaultSearchForm extends StatelessWidget {
  DefaultSearchForm({this.isHome = false});
  bool isHome;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(41),
        border: Border.all(color: Colors.grey)
      ),
      alignment: AlignmentDirectional.center,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(Images.search,color: Colors.grey,),
          ),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  hintText: tr('search_hint'),
                  hintStyle: TextStyle(color: Colors.grey,fontSize: 10,height: 2.5)
              ),
              readOnly: isHome,
              onTap: isHome?(){
                LayoutCubit.get(context).changeIndex(1);
              }:null,
            ),
          ),
        ],
      )
    );
  }
}
