import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import '../../modules/cart/cart_screen.dart';
import '../../modules/home/home_screen.dart';
import '../../modules/order_history/order_history_screen.dart';
import '../../modules/person/person_screen.dart';
import '../../modules/search/search_screen.dart';
import '../../shared/components/components.dart';
import '../../shared/components/constants.dart';
import 'layout_states.dart';

class LayoutCubit extends Cubit<LayoutStates>{

  LayoutCubit ():super(LayoutInitState());
  static LayoutCubit get(context) =>BlocProvider.of(context);

  //Position? position;

  List<Widget> screens = [
    HomeScreen(),
    SearchScreen(),
    PersonScreen(),
    OrderHistoryScreen(),
    CartScreen()
  ];

  int currentIndex = 0;

  void changeIndex(int index){
    currentIndex = index;
    emit(ChangeIndexState());
  }

  void checkInterNet() async {
    InternetConnectionChecker().onStatusChange.listen((event) {
      final state = event == InternetConnectionStatus.connected;
      isConnect = state;
      emit(EmitState());
    });
  }

  // Future<Position> checkPermissions() async {
  //   bool isServiceEnabled = await Geolocator.isLocationServiceEnabled();
  //   LocationPermission permission = await Geolocator.checkPermission();
  //   if (!isServiceEnabled) {}
  //   if (permission == LocationPermission.denied) {
  //     permission = await Geolocator.requestPermission();
  //     if (permission == LocationPermission.denied) {
  //       showToast(msg: 'Location permissions are denied', toastState: false);
  //       emit(GetCurrentLocationState());
  //       return Future.error('Location permissions are denied');
  //     }
  //   }
  //
  //   if (permission == LocationPermission.deniedForever) {
  //     showToast(msg: 'Location permissions are permanently denied, we cannot request permissions Open Location permissions from Setting', toastState: false);
  //     await Geolocator.openLocationSettings();
  //     emit(GetCurrentLocationState());
  //     return Future.error(
  //         'Location permissions are permanently denied, we cannot request permissions.');
  //   }
  //   return await Geolocator.getCurrentPosition(
  //     desiredAccuracy: LocationAccuracy.high,
  //   );
  // }
  //
  // Future<void> getCurrentLocation() async {
  //   emit(GetCurrentLocationLoadingState());
  //   await checkPermissions();
  //   await Geolocator.getLastKnownPosition().then((value) {
  //     if (value != null) {
  //       position = value;
  //       emit(GetCurrentLocationState());
  //       //getAddress(latLng: LatLng(position!.latitude,position!.longitude));
  //     }
  //   });
  // }



}