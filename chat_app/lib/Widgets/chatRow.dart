
import 'package:flutter/material.dart';

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
          padding: const EdgeInsets.all(10.0),
          child: CircleAvatar(
            backgroundColor: Colors.blueGrey,
          ),
        ),
        Column(children: [
          SizedBox(
            child: Text(nickname),
          ),
          Text(aboutMe),
        ],)
        
      ],
       
     ),
    );
  }
}