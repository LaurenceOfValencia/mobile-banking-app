// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:mobile_banking_app/accounts.dart';
import 'package:mobile_banking_app/splash_screen.dart';

TextEditingController usernameController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class LoginScreen extends StatelessWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        // ignore: duplicate_ignore, duplicate_ignore
        body: Padding(
          // ignore: prefer_const_constructors
          padding: EdgeInsets.all(40),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 35),
                child: Image.asset(
                  'assets/images/splash_icon.png',
                ),
              ),
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Color(0xbb555555),
                  labelText: "Username",
                  labelStyle: TextStyle(color: Color(0xffffd60a))
                ),
                style: TextStyle(
                  color: Color(0xffffffff),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color(0xbb555555),
                    labelText: "Password",
                    labelStyle: TextStyle(color: Color(0xffffd60a))
                  ),
                  obscureText: true,
                  style: TextStyle(
                    color: Color(0xffffffff),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () async{
                      List<String> account = await getAccount();
                      if (account[0].compareTo(usernameController.text) == 0 && account[1].compareTo(passwordController.text) == 0)
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SplashScreen()),
                        );
                      }
                      else
                      {
                        final snackBar = SnackBar(content: Text('Wrong username or password. Try again.'));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    },
                    child: Text("Login"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xff003566)),
                      foregroundColor: MaterialStateProperty.all(Color(0xffffffff)),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 1.0),
                child: SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SplashScreen()),
                        );
                      },
                    child: Text("Cancel"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xff003566)),
                      foregroundColor: MaterialStateProperty.all(Color(0xffffffff))
                    ),
                  ),
                ),
              ),

              TextButton(
                onPressed: () {
                    final snackBar = SnackBar(content: Text("This functionality is not available for this demo"));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }, 
                child: Text("Forgot Password?")
                ),
            ],
          ),
        ),
    );
  }
}
