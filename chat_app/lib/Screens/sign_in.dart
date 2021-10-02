// ignore_for_file: prefer_const_constructors

import 'package:chat_app/Screens/sign_up.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

// ignore: use_key_in_widget_constructors
class SignInScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextButton(
          child: Text(
              "CHAT-APP",
            style: TextStyle(
              fontSize: 35,
              fontFamily: 'ZenTokyoZoo',
                letterSpacing: 5,
              color: Colors.white,
            ),
          ),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo.shade600,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(30, 100, 30, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Center(
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 3,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: "GoblinOne",
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                child: Container(
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          width: 3,
                          color: Colors.indigo.shade600,
                          style: BorderStyle.solid
                      )
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Email',
                        contentPadding: EdgeInsets.all(20),
                        border: InputBorder.none
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                child: Container(
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          width: 3,
                          color: Colors.indigo.shade600,
                          style: BorderStyle.solid
                      )
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Password',
                        contentPadding: EdgeInsets.all(20),
                        border: InputBorder.none
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: ButtonTheme(
                  minWidth: 400,
                  height: 50,
                  child: RaisedButton(
                    color: Colors.indigo.shade500,
                    elevation: 8,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    onPressed: () {  },
                    child: Text(
                        "Log In",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                      )
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpScreen()),
                        );
                      },
                      child: Text(
                          'Register Now',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 15
                          )
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}