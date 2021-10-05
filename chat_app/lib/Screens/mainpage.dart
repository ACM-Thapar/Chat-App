// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: use_key_in_widget_constructors
class MainPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text(
            "MAIN",
             style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        leading: GestureDetector(
          onTap: (){
            print("yess");
          },
          child: Icon(
            Icons.arrow_back,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: (){
                print('yes');
              },
              child: Icon(
                Icons.more_vert,
              ),
            ),
          )
          
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ChatRow(
              nickname: 'Nickname:ChiPu',
              aboutMe: 'AboutMe:Shopping',
            ),
          ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: ChatRow(
              nickname: 'Nickname:SongTungMTP',
              aboutMe: 'AboutMe:Like Travel',
          ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: ChatRow(
              nickname: 'Nickname:DangTroung',
              aboutMe: 'AboutMe:Sing my Song',
          ),
           )
        ],
        ),
      )
    );
  }
}

class ChatRow extends StatelessWidget {
  const ChatRow({
    Key? key,
    this.nickname,this.aboutMe
  }) : super(key: key);
  final nickname;
  final aboutMe;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
         color: Colors.grey.shade300,
      ),
     child: Row(
          children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.blueGrey,
          ),
        ),
        Column(children: [
          SizedBox(
            child: Text(nickname),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(aboutMe),
          ),
        ],)
        
      ],
       
     ),
    );
  }
}