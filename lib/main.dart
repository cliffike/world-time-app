import 'package:flutter/material.dart';
import 'package:world_time_app/pages/choose_location.dart';
import 'package:world_time_app/pages/home.dart';
import 'package:world_time_app/pages/loading.dart';
import 'package:world_time_app/pages/About.dart';

void main() {

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      initialRoute: '/',
    routes: {
        '/':(context) => loading(),
      '/home':(context) => home(),
      '/location':(context) => chooseLocation(),
      '/about':(context) => about(),
    },
  ));
}

