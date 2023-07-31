import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../shared/images/images.dart';
import '../../../../shared/styles/colors.dart';

class ContactUsAppbar extends StatelessWidget {
  const ContactUsAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: InkWell(
        onTap: ()=>Navigator.pop(context),
        child: Icon(Icons.arrow_back,color: Colors.black,size: 24,),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(Images.splash,color: defaultColor,height: 59,width: 81,),
          const SizedBox(width: 25,),
          Container(
            height: 54,width: 74,
            decoration: BoxDecoration(
                color: HexColor('#EBEBEB'),
                borderRadius: BorderRadiusDirectional.circular(40)
            ),
            alignment: AlignmentDirectional.center,
            child: Image.asset(Images.phone2,width: 34,height: 34,),
          )
        ],
      ),
    );
  }
}
