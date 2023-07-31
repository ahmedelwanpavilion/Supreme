import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../shared/images/images.dart';
import '../../../shared/styles/colors.dart';

class PaymentModel{
  String image;
  String imageNotSelected;
  String title;
  PaymentModel({required this.title,required this.image,required this.imageNotSelected});
}

class PaymentMethod extends StatefulWidget {
  PaymentMethod({Key? key}) : super(key: key);

  String method = 'apple_pay';

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  int currentIndex = 0;

  List<PaymentModel> methods = [
    PaymentModel(
        image:Images.appleYes,
        imageNotSelected:Images.appleNo,
        title: 'apple_pay'
    ),
    PaymentModel(
        image:Images.visaYes,
        imageNotSelected:Images.visaNo,
        title: 'visa'
    ),
    PaymentModel(
        image:Images.cashYes,
        imageNotSelected:Images.cashNo,
        title: 'cash'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            tr('payment_method'),
            style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),
          ),
        ),
        ListView.separated(
            itemBuilder: (c, i) => itemBuilder(methods[i]),
            separatorBuilder: (c, i) => const SizedBox(height: 25,),
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: methods.length
        )
      ],
    );
  }

  Widget itemBuilder(PaymentModel model) {
    return InkWell(
      onTap: () {
        setState(() {
          widget.method = model.title;
        });
      },
      child: Row(
        children: [
          Image.asset(
            widget.method == model.title ? model.image:model.imageNotSelected,
            height: 21,
            width: 50,
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            tr(model.title),
            style:TextStyle(color:widget.method == model.title ? Colors.black:Colors.grey ),
          ),
          const Spacer(),
          widget.method == model.title
              ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 12,
            child: CircleAvatar(
              backgroundColor: defaultColor,
              radius: 7,
            ),
          )
              : CircleAvatar(
            backgroundColor: Colors.grey.shade300,
            radius: 12,
          ),
        ],
      ),
    );
  }
}