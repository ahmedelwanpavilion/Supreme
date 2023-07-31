import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../shared/styles/colors.dart';

class Reviews extends StatelessWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tr('reviews'),
            style: TextStyle(
              color: Colors.black,fontWeight: FontWeight.w500
            ),
          ),
          SizedBox(
            height: 210,
            child: ListView.separated(
                itemBuilder: (c,i)=>ReviewItem(),
                separatorBuilder: (c,i)=>const SizedBox(height: 10,),
                itemCount: 3
            ),
          )
        ],
      ),
    );
  }
}

class ReviewItem extends StatelessWidget {
  const ReviewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       Row(
         children: [
           Text(
             '3.6',
             style: TextStyle(
                 color: Colors.black,fontWeight: FontWeight.w600
             ),
           ),
           const SizedBox(width: 2,),
           Icon(Icons.star,color: HexColor('#EAA332'),size: 23,),
           const Spacer(),
           Text.rich(
               TextSpan(
                   text: '19:30   ',
                   style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10,color:HexColor('#EAA332')),
                   children: [
                     TextSpan(
                       text: '24/7/2023',
                       style: TextStyle(fontSize: 10,color: Colors.grey.shade900),
                     )
                   ]
               )
           ),
         ],
       ),
        Text(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when',
          style: TextStyle(
              color: Colors.black,fontSize: 11
          ),
        ),
      ],
    );
  }
}

