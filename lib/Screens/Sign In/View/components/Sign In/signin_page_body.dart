import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_app/Screens/Sign%20In/View/birth_date_picker.dart';

import '../../../Provider/check_password.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;
    final padding = EdgeInsets.all(screenWidth * 0.05);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: padding,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Email or username",
                  style: TextStyle(
                    fontSize: screenHeight * 0.04,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                TextFormField(
                  cursorOpacityAnimates: true,
                  cursorColor: Colors.white,
                  style: TextStyle(
                      color: Colors.white, fontSize: screenHeight * 0.02),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(screenHeight * 0.03),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey[850],
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(screenWidth * 0.02),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(screenWidth * 0.02),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Text(
                  "Password",
                  style: TextStyle(
                    fontSize: screenHeight * 0.04,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                TextFormField(
                  onChanged: (value) {
                    Provider.of<LoginProvider>(context, listen: false)
                        .setPassword(value);
                  },
                  cursorOpacityAnimates: true,
                  cursorColor: Colors.white,
                  style: TextStyle(
                      color: Colors.white, fontSize: screenHeight * 0.02),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(screenHeight * 0.03),
                    border: InputBorder.none,
                    hintText: 'Password',
                    hintStyle: TextStyle(
                        color: Colors.white54, fontSize: screenHeight * 0.02),
                    filled: true,
                    fillColor: Colors.grey[850],
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(screenWidth * 0.02),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(screenWidth * 0.02),
                    ),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: screenHeight * 0.02),
                Text(
                  'Password Strength: ${Provider.of<LoginProvider>(context).passwordStrength}',
                  style: TextStyle(
                    fontSize: screenHeight * 0.02,
                    color:
                        Provider.of<LoginProvider>(context).passwordStrength ==
                                'Strong'
                            ? Colors.green
                            : (Provider.of<LoginProvider>(context)
                                        .passwordStrength ==
                                    'Medium'
                                ? Colors.orange
                                : Colors.red),
                  ),
                ),
                SizedBox(height: screenHeight * 0.05),
                Align(
                  alignment: Alignment.center,
                  child: CupertinoButton(
                    borderRadius: BorderRadius.circular(screenWidth * 0.05),
                    padding: EdgeInsets.zero,
                    color: Colors.green,
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => BirthDatePicker()),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: screenHeight * 0.01,
                        horizontal: screenWidth * 0.1,
                      ),
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(
                          fontSize: screenHeight * 0.02,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
