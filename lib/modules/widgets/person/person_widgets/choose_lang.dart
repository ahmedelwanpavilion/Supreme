import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:supre_me/layout/layout_cubit/layout_cubit.dart';

import '../../../../intro/choose_address_screen.dart';
import '../../../../shared/components/constants.dart';
import '../../../../shared/images/images.dart';
import '../../../../shared/network/local/cache_helper.dart';
import '../../../../shared/styles/colors.dart';

class ChooseLang extends StatefulWidget {
  ChooseLang({Key? key}) : super(key: key);

  @override
  State<ChooseLang> createState() => _ChooseLangState();
}

class _ChooseLangState extends State<ChooseLang> {


  void submit(String lang,BuildContext context){
    myLocale = lang;
    context.setLocale(Locale(myLocale));
    CacheHelper.saveData(key: 'locale', value: myLocale);
    LayoutCubit.get(context).changeIndex(0);

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          tr('language'),
          style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,height: 1),
        ),
        const SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            itemBuilder(
              title: tr('en'),
              code: 'en',
              onTap: (){
                submit('en',context);
              }
            ),
            const SizedBox(width: 20,),
            itemBuilder(
              title: tr('ar'),
              code: 'ar',
              onTap: (){
                submit('ar',context);
              }
            ),
          ],
        )
      ],
    );
  }

  Widget itemBuilder({
  required String title,
  required VoidCallback onTap,
  required String code,
}){
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 130,height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(10),
          border: Border.all(color: myLocale == code?defaultColor:defaultGrey),
        ),
        alignment: AlignmentDirectional.center,
        child: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 12,color:myLocale == code?defaultColor:defaultGrey
          ),
        ),
      ),
    );
  }
}
