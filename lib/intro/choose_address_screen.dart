import 'package:flutter/material.dart';

import '../shared/components/components.dart';
import '../shared/images/images.dart';
import '../shared/styles/colors.dart';
import 'intro_screen.dart';

class ChooseAddressModel{

  String title;
  String image;
  ChooseAddressModel({required this.title,required this.image});
}

List<ChooseAddressModel> chooseAddressModel = [
  ChooseAddressModel(image: Images.egypt,title:'Egypt'),
  ChooseAddressModel(image: Images.emirates,title:'United Arab Emirates'),
  ChooseAddressModel(image: Images.saudi,title:'Saudi Arabia'),
];

class ChooseAddressScreen extends StatelessWidget {
  ChooseAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(Images.backGround),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Images.splash,color: Colors.grey.shade700,width: 94,height: 69,),
                const SizedBox(height: 100,),
                ListView.separated(
                    itemBuilder: (c,i)=>itemBuilder(chooseAddressModel[i],c),
                    separatorBuilder: (c,i)=>const SizedBox(height: 20,),
                    padding:const EdgeInsets.symmetric(horizontal: 60),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: chooseAddressModel.length
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget itemBuilder(ChooseAddressModel model,BuildContext context){
    return InkWell(
      onTap: (){
        navigateAndFinish(context, IntroScreen());
      },
      child: Container(
        width: double.infinity,height: 46,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(10),
          border: Border.all(color: defaultGrey),
        ),
        alignment: AlignmentDirectional.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(model.image,width: 28,height: 28,),
            const SizedBox(width: 7,),
            Text(
              model.title,
              style:const TextStyle(fontWeight: FontWeight.w600,fontSize: 9,color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
