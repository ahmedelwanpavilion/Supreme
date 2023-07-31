import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:supre_me/modules/widgets/item_shared/default_button.dart';
import 'package:supre_me/modules/widgets/no_items/no_addresses.dart';
import 'package:supre_me/shared/components/components.dart';
import 'package:supre_me/shared/components/constants.dart';
import 'package:supre_me/shared/images/images.dart';

import '../../../widgets/item_shared/default_appbar.dart';
import 'add_address_screen.dart';

class ManageAddressScreen extends StatelessWidget {
  const ManageAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            DefaultAppbar(tr('manage_address')),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Stack(
                  children: [
                    ListView.separated(
                        itemBuilder: (c,i)=>AddressItem(),
                        separatorBuilder: (c,i)=>const SizedBox(height: 20,),
                        itemCount: 5
                    ),
                    Align(
                      alignment: AlignmentDirectional.bottomCenter,
                      child: DefaultButton(
                        onTap: (){
                          navigateTo(context, AddAddressScreen());
                        },
                        text: tr('add_new_address'),
                        width: size!.width*.75,
                      ),
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

class AddressItem extends StatelessWidget {
  const AddressItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 99,width: double.infinity,
      decoration: BoxDecoration(
          color: HexColor('#F5F5F5'),
          borderRadius: BorderRadiusDirectional.circular(11)
      ),
      padding:const EdgeInsets.symmetric(vertical: 5,horizontal: 25),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Home',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,fontSize:18
                  ),
                ),
                Text(
                  '26985 Brighton Lane, Lake Forest, CA 92630.26985 Brighton Lane, Lake Forest, CA 92630.26985 Brighton Lane, Lake Forest, CA 92630.',
                  maxLines: 2,
                  style: TextStyle(
                      color:Colors.grey.shade600,fontSize: 10,height: 1.5
                  ),
                ),
              ],
            ),
          ),
          IconButton(
              onPressed: (){
                navigateTo(context, AddAddressScreen());
              },
              icon: Image.asset(Images.edit,width: 26,height: 26,)
          )
        ],
      ),
    );
  }
}

