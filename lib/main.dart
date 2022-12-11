import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_academy_en/login.dart';
import 'package:flutter_academy_en/register.dart';
import 'package:flutter_academy_en/tabbar_widget.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/tabbarWidget',
    routes: {
      '/loginScreen' : (context) => LoginScreen(),
      '/RegistrationScreen' : (context) => RegistrationScreen(),
      '/tabbarWidget' : (context) => TabbarWidget(),
    },
));