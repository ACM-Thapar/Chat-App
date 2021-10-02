// ignore_for_file: prefer_const_constructors

import 'package:chat_app/Screens/sign_in.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('This is the page when user is logged out'),
        
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:() {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SignInScreen()),
          );
        },
      ),
    );
  }
}