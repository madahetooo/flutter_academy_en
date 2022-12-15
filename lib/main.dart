import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_academy_en/auth_system/login.dart';
import 'package:flutter_academy_en/auth_system/register.dart';
import 'package:flutter_academy_en/auth_system/tabbar_widget.dart';
import 'package:flutter_academy_en/world_timer_app/ui/choose_location.dart';
import 'package:flutter_academy_en/world_timer_app/ui/landing_page.dart';
import 'package:flutter_academy_en/world_timer_app/ui/loading_screen.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/tabbarWidget',
    routes: {
      '/loginScreen' : (context) => LoginScreen(),
      '/RegistrationScreen' : (context) => RegistrationScreen(),
      '/tabbarWidget' : (context) => TabbarWidget(),
      '/choose_location' : (context) => ChooseLocation(),
      '/landing_page' : (context) => LandingScreen(),
      '/loading_screen' : (context) => LoadingScreen(),
    },
));