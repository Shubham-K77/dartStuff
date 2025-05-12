//Import
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Stateless Widget
class OptionButton extends StatelessWidget {
  //Variable
  final optionText;
  final void Function() onTap;
  //Constructor
  const OptionButton({
    super.key,
    required this.optionText,
    required this.onTap,
  });
  //Build Method
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(10),
        width: 250,
        height: 45,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xFF63412E),
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 1.25,
              blurRadius: 1.5,
            ),
          ],
        ),
        child: Text(
          optionText,
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
