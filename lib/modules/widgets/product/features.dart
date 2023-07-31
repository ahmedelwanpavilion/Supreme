import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:supre_me/shared/images/images.dart';

class FeaturesModel{
  String image;
  String title;
  FeaturesModel({required this.title, required this.image});
}

class Features extends StatelessWidget {
  Features({Key? key}) : super(key: key);
  
  
  List<FeaturesModel> featuresModel = [
    FeaturesModel(title: 'original_products', image: Images.original),
    FeaturesModel(title: 'return_policy', image: Images.returnn),
    FeaturesModel(title: 'save_payment', image: Images.costs),
  ];

  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 91,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
            featuresModel.length,
                (index) =>Column(
                  children: [
                    Image.asset(featuresModel[index].image,height: 71,width: 71,),
                    Text(
                      tr(featuresModel[index].title),
                      style: TextStyle(
                        color: Colors.black,fontSize: 10
                      ),
                    )
                  ],
                )
        ),
      )
    );
  }
}
