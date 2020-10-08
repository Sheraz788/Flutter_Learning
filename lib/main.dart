import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/choose_location.dart';
import 'package:flutter_app/pages/loading.dart';
import 'package:flutter_app/pages/home.dart';
import 'package:flutter_app/pages/Id_card.dart';

void main() {
  runApp(
      MaterialApp(
        initialRoute: '/idcard',
        routes: {
          '/idcard' : (context) => IdCard(),
          '/loading' : (context) => Loading(),
          '/home' : (context) => Home(),
          '/location' : (context) => ChooseLocation(),

        },
      )
  ); //run app
}




