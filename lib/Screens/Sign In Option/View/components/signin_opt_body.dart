import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Sign In/View/signin_page.dart';

Widget loginOptBody(BuildContext context) {
  final mediaQuery = MediaQuery.of(context);
  final height = mediaQuery.size.height;
  final width = mediaQuery.size.width;

  return Stack(
    children: [
      Container(
        height: height * 0.55,
        width: width,
        color: Colors.grey,
        child: Image.asset(
          'Assets/Img/spotify.png',
          fit: BoxFit.cover,
        ),
      ),
      Column(
        children: [
          SizedBox(height: height * 0.30),
          SizedBox(
            height: height * 0.7,
            width: width,
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage('Assets/Img/s_w_logo.png'),
                ),
                 SizedBox(height: height * 0.030),
                Text(
                  "Millions of songs.",
                  style: GoogleFonts.poppins(color: Colors.white, fontSize: width * 0.075),
                ),
                Text(
                  "Free on Spotify",
                  style: GoogleFonts.poppins(color: Colors.white, fontSize: width * 0.075),
                ),
                 SizedBox(height: height*0.03),
                CupertinoButton(
                  padding: EdgeInsets.zero,
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  )),
                  child: Container(
                    alignment: Alignment.center,
                    height: height * 0.07,
                    width: width * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Text(
                      "Sign up free",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                ),
                 SizedBox(height: height * 0.012),
                buildSocialButton(context, 'Assets/Img/Phone.png', 'Continue with phone\nnumber', height, width),
                SizedBox(height: height * 0.012),
                buildSocialButton(context, 'Assets/Img/Google.png', 'Continue with Google', height, width),
                SizedBox(height: height * 0.012),
                buildSocialButton(context, 'Assets/Img/Facebook.png', 'Continue with Facebook', height, width),
                SizedBox(height: height * 0.012),
                Text(
                  "Log in",
                  style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ],
            ),
          )
        ],
      )
    ],
  );
}

Widget buildSocialButton(BuildContext context, String assetPath, String text, double height, double width) {
  return Container(
    alignment: Alignment.center,
    height: height * 0.07,
    width: width * 0.8,
    decoration: BoxDecoration(
      color: const Color(0xff121212),
      borderRadius: BorderRadius.circular(25),
      border: Border.all(
        color: Colors.white60,
        width: 1,
        style: BorderStyle.solid,
      ),
    ),
    child: Row(
      children: [
         SizedBox(width: width *0.01),
        CircleAvatar(
          backgroundColor: const Color(0xff121212),
          radius: 25,
          child: SizedBox(
            height: height * 0.03,
            width: height * 0.03,
            child: Image.asset(
              assetPath,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Spacer(flex: 1,),
        Text(
          text,
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 2,),
      ],
    ),
  );
}