import 'package:drogovat_mobile/features/drugs/presentation/views/drugs_view.dart';
import 'package:drogovat_mobile/features/profile/presentation/views/profiles_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_status.dart';

class AppCubit extends Cubit<AppStates>{
  AppCubit() : super(AppInitState());

  static AppCubit get(context) => BlocProvider.of(context);

  List<Widget> pages = [
    const ProfilesView(),
    const DrugsView(),
  ];

  int selectedIndex = 0;
  void changeIndex(int currentIndex){
    selectedIndex = currentIndex;
    print(selectedIndex);
    emit(ChangeIndexState());
  }
}