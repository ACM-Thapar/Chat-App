// ignore_for_file: prefer_const_constructors

import 'package:chat_app/Widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';


class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
              child: Text(
                "HomeScreen",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          SizedBox(
          height: 30,
          ),
          Button(
            text: 'Login',
            onTap: (){},
            color:Colors.blue,
          ),
          SizedBox(
            width: 200,
          height: 30,
          ),
         Button(
            text: 'Register',
            onTap: (){},
            color:Colors.green,
          ),
          
        ],
      ),
    );
  }
}

