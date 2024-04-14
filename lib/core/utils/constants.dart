import 'package:flutter/material.dart';

var formKey = GlobalKey<FormState>();
var scaffoldKey = GlobalKey<ScaffoldState>();

List<BoxShadow> containerShadow() => [BoxShadow(
      color: Color(0x6D0A0F22),
      blurRadius: 3,
      offset: Offset(0, 4),
      spreadRadius: 0,
    )];
