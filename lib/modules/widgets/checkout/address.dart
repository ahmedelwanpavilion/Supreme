import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:supre_me/shared/images/images.dart';
import 'package:supre_me/shared/styles/colors.dart';

class CheckoutAddress extends StatelessWidget {
  const CheckoutAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Container(
        height: 57,width: double.infinity,
        decoration: BoxDecoration(
          color: HexColor('#F5F5F5'),
          borderRadius: BorderRadiusDirectional.circular(10),
        ),
        alignment: AlignmentDirectional.center,
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        child: Row(
          children: [
            Image.asset(Images.location,height: 20,width: 14,),
            const SizedBox(width: 5,),
            const Expanded(
              child:  Text(
                'Suez - Suez Egypt, Elsalam 1 St: Othman Bin AffanSuez - Suez Egypt, Elsalam 1 St: Othman Bin Affan',
                maxLines: 2,
                style: TextStyle(fontSize: 9,color: Colors.black,height: 1.5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
