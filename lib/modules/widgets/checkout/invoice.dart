import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:supre_me/shared/styles/colors.dart';

class Invoice extends StatelessWidget {
  const Invoice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          tr('invoice_summary'),
          style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),
        ),
        Row(
          children: [
            Text(
              tr('sub_total'),
              style: TextStyle(
                color: Colors.grey.shade500,fontWeight: FontWeight.w300,fontSize: 17
              ),
            ),
            const Spacer(),
            Text(
              '10 SAR',
              style: TextStyle(
                  color: defaultColor,fontSize: 20
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              tr('shipping_charges'),
              style: TextStyle(
                color: Colors.grey.shade500,fontWeight: FontWeight.w300,fontSize: 17
              ),
            ),
            const Spacer(),
            Text(
              '10 SAR',
              style: TextStyle(
                  color: defaultColor,fontSize: 20
              ),
            ),
          ],
        ),
        const SizedBox(height: 5,),
        Row(
          children: [
            Container(
              height: 44,
              width: 150,
              alignment: AlignmentDirectional.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(5),
                border: Border.all(color: defaultColor)
              ),
              child: Text(
                tr('order_total'),
                style: TextStyle(
                    color: defaultColor,fontWeight: FontWeight.w500,fontSize: 20,
                  height: 1.5
                ),
              ),
            ),
            const Spacer(),
            Text(
              '10 SAR',
              style: TextStyle(
                  color: defaultColor,fontSize: 25,fontWeight: FontWeight.w700
              ),
            ),
          ],
        ),
      ],
    );
  }
}
