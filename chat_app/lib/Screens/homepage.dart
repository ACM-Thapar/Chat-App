// ignore_for_file: prefer_const_constructors

<<<<<<< HEAD
import 'package:chat_app/Screens/sign_in.dart';
=======
import 'package:chat_app/Widgets/button.dart';
>>>>>>> upstream/main
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
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
=======
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
>>>>>>> upstream/main
      ),
    );
  }
}

