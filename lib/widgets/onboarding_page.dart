// ignore_for_file: prefer_const_constructors

import 'package:findjobapp/pages/home_page.dart';
import 'package:findjobapp/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPages extends StatelessWidget {
  const OnboardingPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
          ),
          Center(
            child: Image.asset(
              'assets/images/splashimg.png',
              width: 297,
              height: 157,
            ),
          ),
          SizedBox(
            height: 100,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: "Join Us & Explore Thousand\nof ",
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: primaryBlue,
                    fontSize: 18.6,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  TextSpan(
                    text: 'Great Job',
                    style: TextStyle(
                        color: primaryBlue,
                        height: 2,
                        fontWeight: FontWeight.w700),
                  )
                ]),
          ),
          SizedBox(
            height: 63,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 40,
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 54,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: primaryBlue,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
