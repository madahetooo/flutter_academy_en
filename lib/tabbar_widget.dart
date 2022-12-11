import 'package:flutter/material.dart';
import 'package:flutter_academy_en/login.dart';
import 'package:flutter_academy_en/register.dart';
class TabbarWidget extends StatelessWidget {
  const TabbarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Flutter Academy - EN"),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.login),
                  text: 'Login',
                ),
                Tab(
                  icon: Icon(Icons.app_registration),
                  text: 'Register',
                ),
              ],

            ),
          ),
          body: const TabBarView(
            children: [
              LoginScreen(),
              RegistrationScreen(),
            ],
          ),
        ),

      ),
    );
  }
}
