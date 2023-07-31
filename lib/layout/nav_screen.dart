import 'package:flutter/material.dart';

import 'layout_cubit/layout_cubit.dart';

class NavBar extends StatelessWidget {
  final List<Map<String, Widget>> items;
  const NavBar({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = LayoutCubit.get(context);
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadiusDirectional.circular(20),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Colors.grey.shade300
          )
        ]
      ),
      padding:const EdgeInsets.only(bottom: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items.map((e) {
          return GestureDetector(
            onTap: () => cubit.changeIndex(items.indexOf(e)),
            child: Container(
                child: cubit.currentIndex == (items.indexOf(e))
                    ? e['activeIcon']
                    : e['icon']!),
          );
        }).toList(),
      ),
    );
  }
}
