import 'package:flutter/material.dart';
import 'package:supre_me/models/static_model.dart';

import '../../../shared/components/constants.dart';
import '../../../shared/images/images.dart';

class Ads extends StatelessWidget {
  const Ads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 206,
      width: double.infinity,
      child: ListView.separated(
          itemBuilder: (c,i)=>AdsItem(ads[i]),
          separatorBuilder: (c,i)=>const SizedBox(width: 20,),
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(vertical: 20),
          itemCount: ads.length
      ),
    );
  }
}


class AdsItem extends StatelessWidget {
  AdsItem(this.image);

  String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 206,
      width: size!.width,
      child: Image.asset(image,fit: BoxFit.cover,),
    );
  }
}

