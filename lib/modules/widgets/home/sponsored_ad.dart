import 'package:flutter/material.dart';
import 'package:supre_me/shared/styles/colors.dart';

import '../../../models/static_model.dart';
import '../../../shared/components/constants.dart';
import '../../../shared/images/images.dart';

class SponsoredAds extends StatelessWidget {
  const SponsoredAds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: ListView.separated(
                itemBuilder: (c,i)=>SponsoredAdsItem(),
                separatorBuilder: (c,i)=>const SizedBox(width: 20,),
                scrollDirection: Axis.horizontal,
                padding: EdgeInsetsDirectional.zero,
                itemCount: 2
            ),
          ),
          Text(
            'Sponsored',
            style: TextStyle(
              color: defaultGrey,fontSize: 10,fontWeight: FontWeight.w500
            ),
          )
        ],
      ),
    );
  }
}


class SponsoredAdsItem extends StatelessWidget {
  const SponsoredAdsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: size!.width,
      child: Image.asset(ads[1],fit: BoxFit.cover,),
    );
  }
}
