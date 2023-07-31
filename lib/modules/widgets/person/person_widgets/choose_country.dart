import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../intro/choose_address_screen.dart';
import '../../../../shared/images/images.dart';
import '../../../../shared/styles/colors.dart';

class ChooseCountry extends StatefulWidget {
  ChooseCountry({Key? key}) : super(key: key);

  @override
  State<ChooseCountry> createState() => _ChooseCountryState();
}

class _ChooseCountryState extends State<ChooseCountry> {

  int currentIndex = 0 ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            tr('country'),
            style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,height: 1),
          ),
          const SizedBox(height: 15,),
          ListView.separated(
              itemBuilder: (c,i)=>itemBuilder(chooseAddressModel[i],i),
              separatorBuilder: (c,i)=>const SizedBox(height: 20,),
              padding:const EdgeInsets.symmetric(horizontal: 60),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: chooseAddressModel.length
          )
        ],
      ),
    );
  }

  Widget itemBuilder(ChooseAddressModel model,int index){
    return InkWell(
      onTap: (){
        setState(() {
          currentIndex = index;
        });
      },
      child: Container(
        width: double.infinity,height: 46,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(10),
          border: Border.all(color: currentIndex == index?defaultGrey:Colors.grey.shade400),
        ),
        alignment: AlignmentDirectional.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(model.image,width: 28,height: 28,),
            const SizedBox(width: 7,),
            Text(
              model.title,
              style: TextStyle(fontWeight: FontWeight.w600,fontSize: 9,color:currentIndex == index?defaultGrey:Colors.grey.shade400),
            )
          ],
        ),
      ),
    );
  }
}
