import 'package:flutter/material.dart';

var scaffoldKey = GlobalKey<ScaffoldState>();

List<BoxShadow> containerShadow() => [
      const BoxShadow(
        color: Color(0x6D0A0F22),
        blurRadius: 3,
        offset: Offset(0, 4),
        spreadRadius: 0,
      )
    ];

String? uId;

String userCollection = 'users';
String patientsCollection = 'patients';
String drugCollection = 'drugs';
