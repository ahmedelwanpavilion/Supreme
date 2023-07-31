import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supre_me/modules/person/person_cubit/person_cubit.dart';
import 'package:supre_me/modules/person/person_cubit/person_states.dart';

import '../../shared/components/components.dart';
import '../../shared/components/constants.dart';
import '../widgets/person/person_widgets/settings_with_log.dart';

class PersonScreen extends StatelessWidget {
  const PersonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PersonCubit, PersonStates>(
      listener: (context, state) {
        if(isConnect!=null)checkNet(context);
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SettingsWithLog(),
        );
      },
    );
  }
}
