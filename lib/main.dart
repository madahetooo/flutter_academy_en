import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_academy_en/login.dart';
import 'package:flutter_academy_en/register.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/loginScreen',
    routes: {
      '/loginScreen' : (context) => LoginScreen(),
      '/RegistrationScreen' : (context) => RegistrationScreen(),
    },
));