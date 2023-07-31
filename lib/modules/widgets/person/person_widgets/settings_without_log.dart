import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:supre_me/modules/widgets/person/person_widgets/sign_button.dart';
import 'package:supre_me/shared/components/components.dart';
import 'package:supre_me/shared/images/images.dart';

import '../../../../shared/styles/colors.dart';
import '../../../person/auth/signin_screen.dart';
import '../../../person/auth/signup_screen.dart';
import 'choose_country.dart';
import 'choose_lang.dart';
import 'contactus.dart';
import 'hot_line.dart';

class SettingsWithoutLog extends StatelessWidget {
  const SettingsWithoutLog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(Images.splash,color: defaultColor,height: 81,width: 59,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tr('hi_there'),
                  style: TextStyle(
                    color: Colors.black,fontWeight: FontWeight.w600,fontSize: 22,
                    height: 1
                  ),
                ),
                Text(
                  tr('nice_meet'),
                  style: TextStyle(
                      color: Colors.black,fontSize: 17,height: 2
                  ),
                ),
              ],
            ),
            const Spacer(),
            SignButton(
                image: Images.signin,
                text: tr('signin'),
                onTap: (){
                  navigateTo(context, SignInScreen());
                }
            ),
            const SizedBox(width: 60,),
            SignButton(
                image: Images.signup,
                text: tr('signup'),
                onTap: (){
                  navigateTo(context, SignUpScreen());
                }
            ),
          ],
        ),
        ChooseCountry(),
        ChooseLang(),
        ContactUs(),
        Hotline()
      ],
    );
  }
}
