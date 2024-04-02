// import 'package:bodycal/src/domain/constants/keys_constants.dart';

/// Converts Centimeters to Inches
double convertCMtoIN(double cm) => cm * 0.393701;

/// Converts Inches to Centimeters
double convertINtoCM(double inch) => inch * 2.54;

/// Converts Centimeters to Foot
int convertCMtoFT(double cm) => cm.floor() / 2.54 ~/ 12;

/// Converts Foot to Centimeters
double convertFTtoCM(int foot) => foot * 30.48;

/// Converts Foot to Inches
int convertFTtoIN(int foot) => foot * 12;

/// Converts Inches to Foot
int convertINtoFT(int inches) => inches ~/ 12;

/// Converts Kilograms to Pounds
double convertKGtoLB(double kg) => kg * 2.20462;

/// Converts Pounds to Kilograms
double convertLBtoKG(double lb) => lb * 0.453592;