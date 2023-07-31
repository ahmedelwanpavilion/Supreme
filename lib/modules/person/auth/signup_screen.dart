import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:supre_me/modules/person/auth/signin_screen.dart';
import 'package:supre_me/modules/person/auth/verification_screen.dart';
import 'package:supre_me/modules/widgets/item_shared/default_form.dart';
import 'package:supre_me/shared/components/components.dart';

import '../../../shared/images/images.dart';
import '../../../shared/styles/colors.dart';
import '../../widgets/item_shared/default_button.dart';



class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

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
                        title: tr('first_name'),
                        hint: tr('write_first_name')
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: DefaultForm(
                          validator: (str){},
                          controller: TextEditingController(),
                          title: tr('family_name'),
                          hint: tr('write_family_name')
                      ),
                    ),
                    DefaultForm(
                        validator: (str){},
                        controller: TextEditingController(),
                        type: TextInputType.number,
                        isNumber: true,
                        title: tr('phone'),
                        hint: tr('write_phone')
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0,bottom: 20),
                      child: Row(
                        children: [
                          Text(
                            tr('have_account'),
                            style: TextStyle(
                              color: Colors.grey.shade400,fontSize: 11
                            ),
                          ),
                          TextButton(
                              onPressed: (){
                                navigateTo(context, SignInScreen());
                              },
                              child: Text(
                                tr('signin'),
                                style: TextStyle(
                                    color: defaultColor,fontSize: 11
                                ),
                              ),
                          )
                        ],
                      ),
                    ),
                    DefaultButton(
                        text: tr('signup'),
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
