import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:supre_me/intro/splash_screen.dart';
import 'package:supre_me/layout/layout_cubit/layout_cubit.dart';
import 'package:supre_me/modules/widgets/item_shared/default_button.dart';
import 'package:supre_me/modules/widgets/person/person_widgets/log_dialog.dart';
import 'package:supre_me/shared/components/components.dart';
import 'package:supre_me/shared/images/images.dart';
import 'package:supre_me/shared/styles/colors.dart';

import '../../../../shared/components/constants.dart';
import '../../../person/person_screens/aboutus_screen.dart';
import '../../../person/person_screens/address/manage_address_screen.dart';
import '../../../person/person_screens/contactus_screen.dart';
import '../../../person/person_screens/fav_screen.dart';
import '../../../person/person_screens/terms_screen.dart';
import 'choose_country.dart';
import 'choose_lang.dart';
import 'edit_profile_image.dart';

class SettingsWithLog extends StatelessWidget {
  const SettingsWithLog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
          const SizedBox(height: 20,),
          EditProfileImage(),
          Center(
            child: Text(
              'Marwan Sayed',
              style: TextStyle(
                  color: Colors.black,fontSize: 30,height: 1,fontWeight: FontWeight.w700
              ),
            ),
          ),
          ChooseCountry(),
          ChooseLang(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: itemBuilder(
              title: tr('manage_address'),
              onTap: (){
                navigateTo(context, ManageAddressScreen());
              }
            ),
          ),
          itemBuilder(
            title: tr('favorites'),
            onTap: (){
              navigateTo(context, FavScreen());
            }
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: itemBuilder(
                title: tr('order_history'),
                onTap: (){
                  LayoutCubit.get(context).changeIndex(3);
                }
            ),
          ),
          Text(
            tr('ourapp'),
            style: TextStyle(
                color: Colors.grey.shade900,fontSize: 22,height: 1,fontWeight: FontWeight.w700
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: itemBuilder(
                title: tr('contactus'),
                onTap: (){
                  navigateTo(context, ContactUsScreen());
                }
            ),
          ),
          itemBuilder(
              title: tr('aboutus'),
              onTap: (){
                navigateTo(context, AboutUsScreen());
              }
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: itemBuilder(
                title: tr('terms'),
                onTap: (){
                  navigateTo(context, TermsScreen());
                }
            ),
          ),
          Text(
            '${tr('version')} $version',
            style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey.shade800),
          ),
          InkWell(
            onTap: (){
              openUrl('https://pavilion-teck.com/');
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                children: [
                  Text(
                    tr('poweredby'),
                    style: TextStyle(fontWeight: FontWeight.w300,color: Colors.grey.shade700,fontSize: 12),
                  ),
                  const SizedBox(width: 5,),
                  Image.asset(Images.pavilion,height: 20,)
                ],
              ),
            ),
          ),
          DefaultButton(
              text: tr('logout'),
              onTap: (){
                showDialog(
                    context: context,
                    builder: (c)=>LogDialog(
                      onTap: (){
                        navigateAndFinish(context, SplashScreen());
                      },
                      image: Images.logout,
                      textButton: 'logout',
                    )
                );
              }
          ),
          Center(
            child: TextButton(
                onPressed: (){
                  showDialog(
                      context: context,
                      builder: (c)=>LogDialog(
                        onTap: (){
                          navigateAndFinish(context, SplashScreen());
                        },
                        image: Images.deleteAccount,
                        textButton: 'delete_account',
                      )
                  );
                },
                child: Text(
                  tr('delete_account'),
                  style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: defaultColor),
                )
            ),
          )

        ],
      ),
    );
  }

  Widget itemBuilder({
  required String title,
  required VoidCallback onTap,
}){
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey.shade800),
            ),
          ),
          Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey.shade600,size: 15,)
        ],
      ),
    );
  }
}
