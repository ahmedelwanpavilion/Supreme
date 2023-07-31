import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:supre_me/modules/widgets/person/contactus/voice_dialog.dart';
import 'package:supre_me/shared/images/images.dart';
import 'package:supre_me/shared/styles/colors.dart';

import '../../../../shared/components/components.dart';

class ContactUsBottom extends StatelessWidget {
  const ContactUsBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 52,
            width: double.infinity,
            decoration: BoxDecoration(
              color: HexColor('#DBDBDB'),
              borderRadius: BorderRadiusDirectional.circular(41)
            ),
            padding: EdgeInsetsDirectional.only(start: 30),
            alignment: AlignmentDirectional.center,
            child: Row(
              children: [
                Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: tr('type_message'),
                      ),
                    )
                ),
                InkWell(
                  onTap: () async {
                    var status = await Permission.microphone.request();
                    if (status != PermissionStatus.granted) {
                      showToast(msg: 'Microphone permission not granted');
                      await openAppSettings();
                    } else {
                      showDialog(
                          context: context,
                          builder: (context) => VoiceDialog()
                      );
                    }
                  },                  child: Container(
                    height: 52,width: 52,
                    decoration: BoxDecoration(shape: BoxShape.circle,color: HexColor('#717171')),
                    alignment: AlignmentDirectional.center,
                    child: Image.asset(Images.record,width: 13,height: 19,),
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(width: 20,),
        Container(
          height: 52,width: 52,
          decoration: BoxDecoration(shape: BoxShape.circle,color: defaultColor),
          alignment: AlignmentDirectional.center,
          child: Image.asset(Images.send,width: 27,height: 27,),
        )
      ],
    );
  }
}
