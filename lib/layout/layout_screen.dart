import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../shared/components/components.dart';
import '../shared/components/constants.dart';
import '../shared/images/images.dart';
import '../shared/styles/colors.dart';
import 'layout_cubit/layout_cubit.dart';
import 'layout_cubit/layout_states.dart';
import 'nav_screen.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LayoutCubit, LayoutStates>(
      listener: (context, state) {
        if(isConnect!=null)checkNet(context);
      },
      builder: (context, state) {
        var cubit = LayoutCubit.get(context);
        return Scaffold(
          body: SafeArea(child: cubit.screens[cubit.currentIndex],),
          extendBody: true,
          extendBodyBehindAppBar: true,
          bottomNavigationBar: NavBar(
            items: [
              {
                'activeIcon':
                Image.asset(Images.home,width: 22,height: 22,color: defaultColor,),
                'icon':
                Image.asset(Images.home,width: 18,height: 18,color: defaultGrey,),
              },
              {
                'activeIcon':
                Image.asset(Images.search,width: 22,height: 22,color: defaultColor,),
                'icon':
                Image.asset(Images.search,width: 18,height: 18,color: defaultGrey,),
              },
              {
                'activeIcon':
                Image.asset(Images.person,width: 22,height: 22,color: defaultColor,),
                'icon':
                Image.asset(Images.person,width: 18,height: 18,color: defaultGrey,),
              },
              {
                'activeIcon':
                Image.asset(Images.orderHistory,width: 22,height: 22,color: defaultColor,),
                'icon':
                Image.asset(Images.orderHistory,width: 18,height: 18,color: defaultGrey,),
              },
              {
                'activeIcon':
                Image.asset(Images.cart,width: 22,height: 22,color: defaultColor,),
                'icon':
                Image.asset(Images.cart,width: 18,height: 18,color: defaultGrey,),
              },
            ],
          ),
        );
      },
    );
  }
}
