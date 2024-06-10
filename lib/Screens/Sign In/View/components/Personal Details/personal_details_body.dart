import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_app/Utils/global.dart';
import '../../../Provider/check_box_provider.dart';

Widget personalDetailsBody(BuildContext context) {
  final mediaQuery = MediaQuery.of(context);
  final screenHeight = mediaQuery.size.height;
  final screenWidth = mediaQuery.size.width;
  final padding = EdgeInsets.symmetric(horizontal: screenWidth * 0.05);

  return SingleChildScrollView(
    child: Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: screenHeight * 0.05),
          Text(
            "What's your name?",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: screenHeight * 0.032),
          ),
          SizedBox(height: screenHeight * 0.01),
          TextField(
            controller: txtName,
            cursorOpacityAnimates: true,
            cursorColor: Colors.white,
            style: TextStyle(color: Colors.white, fontSize: screenHeight * 0.020),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(screenHeight * 0.023),
              border: InputBorder.none,
              hintStyle: TextStyle(color: Colors.white54, fontSize: screenHeight * 0.025),
              filled: true,
              fillColor: Colors.grey[850],
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(screenWidth * 0.04),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(screenWidth * 0.04),
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.01),
          Text(
            "This appears on your Spotify profile.",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: screenHeight * 0.017),
          ),
          SizedBox(height: screenHeight * 0.01),
          Divider(color: Colors.white, thickness: 0.5),
          SizedBox(height: screenHeight * 0.01),
          Text(
            'By tapping "Create account", you agree to the Spotify Terms of Use. ',
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: screenHeight * 0.015),
          ),
          SizedBox(height: screenHeight * 0.02),
          Text(
            'Terms of Use',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: screenHeight * 0.017,
              color: Colors.green,
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          Text(
            'To learn more about how Spotify collects, uses, shares and products your personal data, please see the Spotify Privacy Policy',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: screenHeight * 0.015,
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          Text(
            'Privacy Policy',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: screenHeight * 0.017,
              color: Colors.green,
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'I would prefer not to receive marketing\nmessages from Spotify.',
                    style: TextStyle(fontSize: screenHeight * 0.016),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Text(
                    "Share my registration date with Spotify's\ncontent providers for marketing purposes",
                    style: TextStyle(fontSize: screenHeight * 0.016),
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Consumer<CheckBoxProvider>(
                    builder: (context, checkBoxProvider, child) => Transform.scale(
                      scale: 1.3,
                      child: Checkbox(
                        value: checkBoxProvider.isChecked2,
                        onChanged: (value) {
                          checkBoxProvider.toggleCheckbox2();
                        },
                        shape: CircleBorder(),
                        checkColor: Colors.white,
                        activeColor: Colors.green,
                        visualDensity: VisualDensity(horizontal: -2),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Consumer<CheckBoxProvider>(
                    builder: (context, checkBoxProvider, child) => Transform.scale(
                      scale: 1.3,
                      child: Checkbox(
                        value: checkBoxProvider.isChecked1,
                        onChanged: (value) {
                          checkBoxProvider.toggleCheckbox1();
                        },
                        shape: CircleBorder(),
                        checkColor: Colors.white,
                        activeColor: Colors.green,
                        visualDensity: VisualDensity(horizontal: -2),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    ),
  );
}
