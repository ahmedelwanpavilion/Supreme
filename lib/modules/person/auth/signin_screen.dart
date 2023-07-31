import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:supre_me/modules/person/auth/signup_screen.dart';
import 'package:supre_me/modules/person/auth/verification_screen.dart';
import 'package:supre_me/modules/widgets/item_shared/default_button.dart';
import 'package:supre_me/modules/widgets/item_shared/default_form.dart';

import '../../../shared/components/components.dart';
import '../../../shared/images/images.dart';
import '../../../shared/styles/colors.dart';



class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tr('welcome_back'),
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
                    const SizedBox(height: 35,),
                    DefaultForm(
                        validator: (str){},
                        controller: TextEditingController(),
                        title: tr('phone'),
                        hint: tr('write_phone')
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0,bottom: 20),
                      child: Row(
                        children: [
                          Text(
                            tr('dont_have_account'),
                            style: TextStyle(
                                color: Colors.grey.shade400,fontSize: 11
                            ),
                          ),
                          TextButton(
                            onPressed: (){
                              navigateTo(context, SignUpScreen());
                            },
                            child: Text(
                              tr('signup'),
                              style: TextStyle(
                                  color: defaultColor,fontSize: 11
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    DefaultButton(
                        text: tr('signin'),
                        onTap: (){
                          navigateTo(context, VerificationScreen());
                        }
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
