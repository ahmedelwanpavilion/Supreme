import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:supre_me/shared/styles/colors.dart';

class ChooseSize extends StatefulWidget {
  const ChooseSize({Key? key}) : super(key: key);

  @override
  State<ChooseSize> createState() => _ChooseSizeState();
}

class _ChooseSizeState extends State<ChooseSize> {

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0,left: 10,bottom: 30),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadiusDirectional.circular(10),
            boxShadow: [
            BoxShadow(
              blurRadius: 8,
              color: Colors.grey.shade300
            )
          ]
        ),
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tr('size'),
              style: TextStyle(
                fontWeight: FontWeight.w500,color: Colors.black
              ),
            ),
            const SizedBox(height: 10,),
            Wrap(
              direction: Axis.horizontal,
              spacing: 30,
              runSpacing: 8,
              children: List.generate(9, (index) => itemBuilder(context,index)),
            )
          ],
        ),
      ),
    );
  }

  Widget itemBuilder(BuildContext context,int index){
    return InkWell(
      onTap: (){
        setState(() {
          currentIndex = index;
        });
      },
      child: Container(
        height: 26,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(5),
          border: Border.all(color: currentIndex == index?defaultColor:Colors.grey.shade400)
        ),
        alignment: AlignmentDirectional.center,
        child: Text(
          '32 Inch',
          style: TextStyle(
            color: currentIndex == index?defaultColor:Colors.grey.shade400,
            height: 1.5
          ),
        ),
      ),
    );
  }
}


