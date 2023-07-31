import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../shared/images/images.dart';
import '../item_shared/default_appbar.dart';
import '../item_shared/default_button.dart';

class HomeMap extends StatelessWidget {
  const HomeMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
                target: LatLng(
                    25.2048,55.2708
                ),
                zoom: 14
            ),
          ),
          Column(
            children: [
              DefaultAppbar(''),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 20),
                  child: Column(
                    children: [
                      Container(
                        height: 57,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadiusDirectional.circular(10)
                        ),
                        padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                        child: Row(
                          children: [
                            Image.asset(Images.location,width: 13,height: 20,),
                            const SizedBox(width: 5,),
                            Expanded(
                              child: Text(
                                'Suez - Suez Egypt, Elsalam 1 St: Othman Bin AffanSuez - Suez Egypt, Elsalam 1 St: Othman Bin Affan',
                                maxLines: 2,
                                style: TextStyle(fontSize: 9,color: Colors.black),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      DefaultButton(
                          text: tr('confirm_location'),
                          color: HexColor('#0064FF'),
                          onTap: (){}
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
