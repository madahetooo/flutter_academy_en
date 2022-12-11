import 'package:flutter/material.dart';
import 'package:flutter_academy_en/home.dart';
import 'package:flutter_academy_en/register.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 180,
              child: Image.asset(
                "assets/dashatars.png",
                fit: BoxFit.contain,
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  label: const Text("Email Address"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.password),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  label: const Text("Password"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
            const SizedBox(
              height: 30,
            ),
            Material(
              elevation: 5,
              color: Colors.red,
              borderRadius: BorderRadius.circular(30),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: const Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Text("Don't have an account ?!  "),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => RegistrationScreen()));
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.red,
                    fontWeight: FontWeight.bold,fontSize: 15),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
