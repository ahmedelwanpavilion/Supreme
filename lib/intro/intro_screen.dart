import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:supre_me/shared/network/local/cache_helper.dart';
import '../layout/layout_screen.dart';
import '../modules/widgets/item_shared/default_button.dart';
import '../shared/components/components.dart';
import '../shared/components/constants.dart';
import '../shared/images/images.dart';
import '../shared/styles/colors.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({Key? key}) : super(key: key);

  List<String> titles = [
    'intro_feature1',
    'intro_feature2',
    'intro_feature3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            children: [
              Image.asset(Images.intro,height: 190,width: double.infinity,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  tr('intro_title'),
                  style: TextStyle(
                    fontSize: 21,fontWeight: FontWeight.w500,color: defaultColor,
                    height: 1.3
                  ),
                ),
              ),
              Text(
                tr('intro_desc'),
                style: TextStyle(
                    fontSize: 11,color: Colors.grey.shade600,
                    height: 1.4
                ),
              ),
              const SizedBox(height: 35,),
              ListView.separated(
                  itemBuilder: (c,i)=>itemBuilder(titles[i]),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (c,i)=>const SizedBox(height: 15,),
                  itemCount: titles.length
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: DefaultButton(
                  onTap: (){
                    intro = true;
                    CacheHelper.saveData(key: 'intro', value: intro);
                    navigateAndFinish(context, LayoutScreen());
                  },
                  text: tr('ok'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  
  Widget itemBuilder(String title){
    return Row(
      children: [
        Image.asset(Images.check,width: 11.5,height: 11.5,),
        const SizedBox(width: 5,),
        Text(
          tr(title),
          style: TextStyle(
              fontSize: 11,color: Colors.grey.shade800,
              height: 1.4
          ),
        ),
      ],
    );
  }
}
