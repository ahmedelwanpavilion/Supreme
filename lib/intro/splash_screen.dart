import 'dart:async';
import 'package:flutter/material.dart';
import 'package:supre_me/intro/choose_address_screen.dart';
import '../layout/layout_screen.dart';
import '../shared/components/components.dart';
import '../shared/components/constants.dart';
import '../shared/images/images.dart';
import '../shared/styles/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  late Timer timer;

  @override
  void initState() {
    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if(intro!=null){
        navigateAndFinish(context, LayoutScreen());
      }else{
        navigateAndFinish(context, ChooseAddressScreen());
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: defaultColor,
      body: Center(child: Image.asset(Images.splash,width: 140,height: 103,)),
    );
  }
}
