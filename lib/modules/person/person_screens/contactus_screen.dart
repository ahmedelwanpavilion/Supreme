import 'package:flutter/material.dart';
import 'package:supre_me/shared/images/images.dart';

import '../../widgets/person/contactus/contactus_appbar.dart';
import '../../widgets/person/contactus/contactus_bottom.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(Images.backGround2),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  ContactUsAppbar(),
                  Expanded(child: SizedBox()),
                  ContactUsBottom()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
