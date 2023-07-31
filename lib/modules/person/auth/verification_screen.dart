import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:supre_me/modules/widgets/item_shared/default_button.dart';
import 'package:supre_me/modules/widgets/item_shared/default_form.dart';
import 'package:supre_me/modules/widgets/person/person_widgets/otp.dart';

import '../../../shared/components/constants.dart';
import '../../../shared/images/images.dart';
import '../../../shared/styles/colors.dart';



class VerificationScreen extends StatelessWidget {
  VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: ()=>FocusManager.instance.primaryFocus?.unfocus(),
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        child: Stack(
          children: [
            Image.asset(Images.backGround),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        InkWell(onTap: ()=>Navigator.pop(context), child: Icon(Icons.arrow_back)),
                        const SizedBox(width: 15,),
                        Image.asset(Images.splash,color: defaultColor,height: 59,width: 81,),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Text(
                      tr('verify_number'),
                      style: TextStyle(
                          color: Colors.black,fontWeight: FontWeight.w600,fontSize: 22,
                          height: 1
                      ),
                    ),
                    const SizedBox(height: 35,),
                    Text(
                      tr('verification_code'),
                      style: TextStyle(
                          fontWeight: FontWeight.w300,fontSize: 15,color: Colors.black,height: 1
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OTPWidget(
                            controller: TextEditingController(),
                            hint: myLocale == 'ar'?'4':'1',
                          onFinished: () {
                            if ( myLocale != 'en') {
                              //submit(context);
                            }
                          },
                        ),
                        OTPWidget(
                            controller: TextEditingController(),
                            hint: myLocale == 'ar'?'3':'2',
                        ),
                        OTPWidget(
                            controller: TextEditingController(),
                            hint: myLocale == 'ar'?'2':'3',
                        ),
                        OTPWidget(
                            controller: TextEditingController(),
                            hint: myLocale == 'ar'?'1':'4',
                          onFinished: () {
                            if ( myLocale != 'ar') {
                             // submit(context);
                            }
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 30,),
                    DefaultButton(
                        text: tr('signin'),
                        onTap: (){}
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}
