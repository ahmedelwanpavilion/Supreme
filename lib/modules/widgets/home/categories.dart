import 'package:flutter/material.dart';
import 'package:supre_me/shared/components/components.dart';
import 'package:supre_me/shared/images/images.dart';

import '../../../models/static_model.dart';
import '../../home/category_screen.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: double.infinity,
      child: ListView.separated(
          itemBuilder: (c,i)=>CategoryItem(categories[i]),
          separatorBuilder: (c,i)=>const SizedBox(width: 20,),
          scrollDirection: Axis.horizontal,
          padding:EdgeInsetsDirectional.zero,
          itemCount: categories.length
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  CategoryItem(this.categoryModel);
  CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        navigateTo(context, CategoryScreen(categoryModel.title));
      },
      child: SizedBox(
        width: 76,
        child: Column(
          children: [
            Container(
              height: 76,width: 76,
              decoration:const BoxDecoration(shape: BoxShape.circle),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.asset(categoryModel.image,fit: BoxFit.cover,),
            ),
            const SizedBox(height: 5,),
            Text(
              categoryModel.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.w600,fontSize: 10),
            )
          ],
        ),
      ),
    );
  }
}

