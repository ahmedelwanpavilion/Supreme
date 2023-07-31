import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:supre_me/modules/person/person_cubit/person_states.dart';

import '../../../shared/components/constants.dart';

class PersonCubit extends Cubit<PersonStates>{

  PersonCubit (): super(PersonInitState());

  static PersonCubit get(context)=> BlocProvider.of(context);

  XFile? profileImage;

  ImagePicker picker = ImagePicker();



  Future<XFile?> pick(ImageSource source) async {
    try {
      return await picker.pickImage(source: source, imageQuality: 20);
    } catch (e) {
      print(e.toString());
      emit(ImageWrong());
    }
  }

  void emitState()=>emit(EmitState());

  void checkInterNet() async {
    InternetConnectionChecker().onStatusChange.listen((event) {
      final state = event == InternetConnectionStatus.connected;
      isConnect = state;
      emit(EmitState());
    });
  }
}