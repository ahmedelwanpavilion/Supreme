import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:supre_me/shared/bloc_observer.dart';
import 'package:supre_me/shared/components/constants.dart';
import 'package:supre_me/shared/network/local/cache_helper.dart';

import 'intro/splash_screen.dart';
import 'layout/layout_cubit/layout_cubit.dart';
import 'modules/person/person_cubit/person_cubit.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  String? loca = CacheHelper.getData(key: 'locale');

  intro = CacheHelper.getData(key: 'intro');

  if(loca !=null){
    myLocale = loca;
  }else{
    Platform.localeName.contains('ar')
        ?myLocale = 'ar'
        :myLocale = 'en';
  }

  PackageInfo packageInfo = await PackageInfo.fromPlatform();

  version = packageInfo.version;

  BlocOverrides.runZoned(
        () {
      runApp(
        EasyLocalization(
          supportedLocales: const [Locale('en'), Locale('ar')],
          useOnlyLangCode: true,
          path: 'assets/langs',
          fallbackLocale: const Locale('en'),
          startLocale:Locale(myLocale),
          child: const MyApp(),
        ),
      );
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Color.fromRGBO(41, 167, 77, 50),
        //or set color with: Color(0xFF0000FF)
        statusBarIconBrightness: Brightness.dark));
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LayoutCubit()..checkInterNet(),
        ),
        BlocProvider(
          create: (context) => PersonCubit()..checkInterNet(),
        ),
      ],
      child: MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner:false,
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.teal),
            fontFamily: 'Cairo',
            appBarTheme: AppBarTheme(
                systemOverlayStyle: SystemUiOverlayStyle(
                    statusBarIconBrightness: Brightness.dark
                )
            )
        ),
        home: const SplashScreen(),
      ),
    );
  }
}

