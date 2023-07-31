import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../models/static_model.dart';
import '../../../shared/components/components.dart';
import '../../../shared/images/images.dart';
import '../../../shared/styles/colors.dart';
import '../../product/product_screen.dart';


class GridProducts extends StatelessWidget {
  const GridProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 25,
          mainAxisSpacing: 15,
          childAspectRatio: 1/1.3
      ),
      itemCount: 6,
      itemBuilder: (c,i)=>Product(products[i]),
    );
  }
}

class Product extends StatelessWidget {
  Product(this.productModel);
  ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        navigateTo(context, ProductScreen(productModel,''));
      },
      child: Container(
        decoration: BoxDecoration(
            color: HexColor('#F5F5F5'),
            borderRadius: BorderRadiusDirectional.circular(5)
        ),
        padding:const EdgeInsetsDirectional.all(20),
        child: Column(
          children: [
            Align(
                alignment: AlignmentDirectional.topEnd,
                child: Image.asset(Images.favYes,width: 19,height: 19,)
            ),
            Expanded(child: Image.asset(productModel.image,)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                productModel.title,
                maxLines: 2,
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 9),
              ),
            ),
            Row(
              children: [
                Text.rich(
                    TextSpan(
                        text: '${productModel.price}/',
                        style: TextStyle(fontWeight: FontWeight.w600,fontSize: 13,color: Colors.black),
                        children: [
                          TextSpan(
                            text: 'UAD',
                            style: TextStyle(fontSize: 10,color: defaultGrey),
                          )
                        ]
                    )
                ),
                const Spacer(),
                Text(
                  productModel.rate,
                  style: TextStyle(
                      color: Colors.black,fontSize: 9,fontWeight: FontWeight.w600
                  ),
                ),
                const SizedBox(width: 2,),
                Icon(Icons.star,color: HexColor('#EAA332'),size: 15,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
