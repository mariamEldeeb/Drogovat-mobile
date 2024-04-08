import 'package:drogovat_mobile/core/app_cubit/app_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppStates>{
  AppCubit() : super(AppInitState());

  static AppCubit get(context) => BlocProvider.of(context);

  int selectedIndex = 1;
  void changeIndex(int currentIndex){
    selectedIndex = currentIndex;
    print(selectedIndex);
    emit(ChangeIndexState());
  }
}