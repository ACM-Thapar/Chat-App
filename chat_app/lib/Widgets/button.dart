
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Button extends StatelessWidget {
  const Button({
    Key? key,
    this.color,this.text,this.onTap
  }) : super(key: key);
final color;
final text;
final onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 250,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50),
          
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
          ),
        ),
      ),
    );
  }
}