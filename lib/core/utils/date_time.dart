import 'package:intl/intl.dart';

DateTime nowTime = DateTime.now();
int year = nowTime.year;
int month = nowTime.month;
int day = nowTime.day;
int hour = nowTime.hour % 12;
int minute = nowTime.minute;
int second = nowTime.second;

//////////////////////////// Date //////////////////////////////////////////

DateTime nowDate = DateTime.now();
int currentYear = DateTime.now().year;
String formattedDate = DateFormat('d MMMM yyyy', 'fr_FR').format(nowDate);