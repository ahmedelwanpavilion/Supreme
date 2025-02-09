import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:supre_me/modules/widgets/item_shared/default_appbar.dart';
import 'package:supre_me/shared/images/images.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(Images.backGround2),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  DefaultAppbar(tr('terms')),
                  Expanded(
                      child: SingleChildScrollView(
                        child: Text(
                          'Lorem Ipsum is simply dummy text of the pLorem Ipsum is simply dummy text of the pLorem Ipsum is simply dummy text of the pLorem Ipsum is simply dummy text of the pLorem Ipsum is simply dummy text of the pLorem Ipsum is simply dummy text of the pLorem Ipsum is simply dummy text of the pLorem Ipsum is simply dummy text of the pLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem IpsumLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,',
                          style: TextStyle(
                              fontSize: 16,
                              height: 2.3
                          ),
                        ),
                      )
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
