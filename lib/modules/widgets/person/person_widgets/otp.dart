import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../shared/components/constants.dart';
import '../../../../shared/styles/colors.dart';

class OTPWidget extends StatelessWidget {

  OTPWidget({
    required this.controller,
    required this.hint,
    this.onFinished,
    this.autoFocus = false
  });

  bool autoFocus;
  VoidCallback? onFinished;
  TextEditingController controller;
  String hint;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 52,
      child: TextFormField(
        textAlign: TextAlign.center,
        controller: controller,
        autofocus: autoFocus,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(),
            ),
            border: UnderlineInputBorder(
                borderSide: BorderSide()
            ),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: defaultColor)
            ),
            hintText: hint,
            hintStyle: TextStyle(fontWeight: FontWeight.w400,fontSize: 18,color: Colors.grey.shade300)
        ),
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        onChanged: (value) {
          if(value.isNotEmpty){
            myLocale =='ar'
                ? FocusManager.instance.primaryFocus!.previousFocus()
                :FocusManager.instance.primaryFocus!.nextFocus();
            if(onFinished!=null)onFinished!();
          }else{
            myLocale =='ar'
                ? FocusManager.instance.primaryFocus!.nextFocus()
                :FocusManager.instance.primaryFocus!.previousFocus();
          }
        },
      ),
    );
  }
}
