import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:supre_me/modules/widgets/item_shared/default_search_form.dart';

import '../../shared/styles/colors.dart';

class OrderHistoryScreen extends StatelessWidget {
  const OrderHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          DefaultSearchForm(),
          const SizedBox(height: 20,),
          Expanded(
            child: ListView.separated(
                itemBuilder: (c,i)=>OrderHistoryItem(),
                separatorBuilder: (c,i)=>const SizedBox(height: 20,),
                itemCount: 4
            ),
          )
        ],
      ),
    );
  }
}

class OrderHistoryItem extends StatelessWidget {
  const OrderHistoryItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 99,width: double.infinity,
      decoration: BoxDecoration(
        color: HexColor('#F5F5F5'),
        borderRadius: BorderRadiusDirectional.circular(11)
      ),
      padding:const EdgeInsets.symmetric(vertical: 15,horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Order #12345',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,fontSize: 20.5
                  ),
                ),
              ),
              Text(
                'Date 22/1',
                style: TextStyle(
                  color: Colors.grey.shade900,fontSize: 11.5
                ),
              ),
            ],
          ),
          const Spacer(),
          Text(
            'On Going',
            style: TextStyle(
                color:defaultColor,fontSize: 12.5
            ),
          ),
        ],
      ),
    );
  }
}

