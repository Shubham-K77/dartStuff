//Imports:
import 'package:expense_tracker/screens/landing_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Building The Widget:
class home_screen extends StatelessWidget {
  const home_screen({super.key});
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Logo, HeroText, Mottifs And Buttons
            Container(
              margin: EdgeInsets.all(2),
              width: 800,
              height: 200,
              child: Image.asset('assets/Images/logo-1.png'),
            ),
            //Main Text Display
            Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      "Budgeting is as Simple as What's Left Over.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        fontSize: 21.45,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Displaying The Income Mottif And Text's
            Container(
              padding: EdgeInsets.all(10),
              width: 550,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.lightGreen,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [Icon(Icons.attach_money, color: Colors.white)],
                    ),
                  ),
                  Text(
                    'Your Income',
                    style: GoogleFonts.roboto(
                      fontSize: 17.33,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            //Displaying the expenses mottifs and titles
            Container(
              padding: EdgeInsets.all(10),
              width: 550,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [Icon(Icons.attach_money, color: Colors.white)],
                    ),
                  ),
                  Text(
                    'Your Expense',
                    style: GoogleFonts.roboto(
                      fontSize: 17.33,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            //Displaying the Savings mottifs and titles
            Container(
              padding: EdgeInsets.all(10),
              width: 550,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.blueGrey, width: 0.1),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [Icon(Icons.save, color: Colors.white)],
                    ),
                  ),
                  Text(
                    'Left over for savings',
                    style: GoogleFonts.roboto(
                      fontSize: 17.33,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            //Navigator Button
            Container(
              padding: EdgeInsets.all(6),
              margin: EdgeInsets.all(3),
              width: 550,
              height: 75,
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(4),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LandingScreen()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Tell Us Your Monthly Income',
                      style: GoogleFonts.roboto(
                        fontSize: 17.8,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
