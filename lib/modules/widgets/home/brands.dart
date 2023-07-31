import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../shared/images/images.dart';

class Brands extends StatelessWidget {
  const Brands({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tr('brands'),
            style: TextStyle(
                color: Colors.black,fontWeight: FontWeight.w500,fontSize: 25
            ),
          ),
          const SizedBox(height: 10,),
          SizedBox(
            height: 60,
            child:ListView.separated(
                itemBuilder: (c,i)=>Image.asset(Images.ad),
                separatorBuilder: (c,i)=>const SizedBox(width: 20,),
                scrollDirection: Axis.horizontal,
                padding: EdgeInsetsDirectional.zero,
                itemCount: 2
            ),
          )
        ],
      ),
    );
  }
}
