import 'package:flutter/material.dart';
import 'package:supre_me/modules/widgets/item_shared/default_button.dart';
import 'package:supre_me/shared/images/images.dart';

class NoAddresses extends StatelessWidget {
  const NoAddresses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(Images.noAddress,height: 181,width: 206,),
          Text(
            'No locations yet',
            style: TextStyle(
              color: Colors.black,fontSize: 30,fontWeight: FontWeight.w500
            ),
          ),
          Text(
            'You can add new locations now',
            style: TextStyle(
              color: Colors.grey.shade500,fontSize: 15,fontWeight: FontWeight.w500,height: 1
            ),
          ),
          const SizedBox(height: 20,),
          DefaultButton(text: 'Add Location', onTap: (){})
        ],
      ),
    );
  }
}
