// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homepage.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextButton(
          child: Text(
            "Chat-App",
            style: GoogleFonts.poppins(
              fontSize: 35,
              color: Colors.white,
              fontWeight: FontWeight.bold,
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
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/Profile.jpg'),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "NickName: ",
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo
                )
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Name',
                  contentPadding: EdgeInsets.all(5)
                ),
                initialValue: "NAME",
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                  "About Me: ",
                  style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo
                  )
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'About Me',
                    contentPadding: EdgeInsets.all(5)
                ),
                initialValue: "ABOUT",
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: SizedBox(
                  width: 180,
                  height: 50,
                  child: CupertinoButton(
                    padding: EdgeInsets.all(5),
                    onPressed: () { },
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    color: Colors.green,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
