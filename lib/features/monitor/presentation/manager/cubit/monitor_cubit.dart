import 'package:drogovat_mobile/features/monitor/presentation/manager/cubit/monitor_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../views/widgets/digital_num_with_bg.dart';

class MonitorCubit extends Cubit<MonitorStates> {
  MonitorCubit() : super(MonitorInitialState());

  static MonitorCubit get(context) => BlocProvider.of(context);

  List<DigitalNumWithBG> createNumberTime(int numTime, Color timeColor) {
    final parsedNumTime = numTime % 60;
    final bool isNumberTwoDigits = parsedNumTime.toString().length == 2;
    final int firstDigit =
    isNumberTwoDigits ? int.parse(parsedNumTime.toString()[0]) : 0;
    final int secondDigit = isNumberTwoDigits
        ? int.parse(parsedNumTime.toString()[1])
        : parsedNumTime;
    emit(ChangeTimeState());
    return [
      DigitalNumWithBG(
        value: firstDigit,
        color: timeColor,
      ),
      DigitalNumWithBG(
        value: secondDigit,
        color: timeColor,
      ),
    ];
  }
}
