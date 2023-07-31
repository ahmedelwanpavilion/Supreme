import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:supre_me/shared/styles/colors.dart';

class DefaultForm extends StatelessWidget {
  DefaultForm({
    required this.validator,
    required this.controller,
    this.type = TextInputType.text,
    required this.title,
    required this.hint,
    this.isNumber = false
});

  String title;
  String hint;
  TextInputType type;
  TextEditingController controller;
  FormFieldValidator validator;
  bool isNumber;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w300,fontSize: 15,color: Colors.black,height: 1
          ),
        ),
        TextFormField(
          validator: validator,
          controller: controller,
          textInputAction: TextInputAction.done,
          keyboardType: type,
          inputFormatters: [
            if(isNumber)LengthLimitingTextInputFormatter(10),
            if(isNumber)FilteringTextInputFormatter.digitsOnly
          ],
          cursorColor: defaultColor,
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
        )
      ],
    );
  }
}
