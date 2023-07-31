import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:supre_me/modules/person/person_cubit/person_cubit.dart';
import 'package:supre_me/shared/images/images.dart';

import 'choose_proifle_photo.dart';

class EditProfileImage extends StatelessWidget {
  const EditProfileImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 145,width: 145,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              height: 130,width: 130,
              decoration: BoxDecoration(shape: BoxShape.circle),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child:PersonCubit.get(context).profileImage!=null
                  ?Image.file(File(PersonCubit.get(context).profileImage!.path),fit: BoxFit.cover,)
                  : Image.asset(Images.ad,fit: BoxFit.cover,),
            ),
            InkWell(
              onTap: (){
                showModalBottomSheet(
                    context: context,
                    builder: (context)=>ChooseProfilePhotoType()
                );
              },
              child: Align(
                alignment: AlignmentDirectional.bottomEnd,
                  child: Image.asset(Images.editImage,fit: BoxFit.cover,width: 50,height: 50,)),
            )
          ],
        ),
      ),
    );
  }
}
