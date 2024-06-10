import 'package:flutter/material.dart';
import 'package:spotify_app/Screens/Sign%20In/View/components/same_appbar.dart';
import 'components/Gender Select/gender_select_body.dart';

class GenderSelecting extends StatelessWidget {
  const GenderSelecting({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;
    final padding = EdgeInsets.symmetric(horizontal: screenWidth * 0.05);
    final spacing = SizedBox(height: screenHeight * 0.08);
    final textStyle = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: screenHeight * 0.05,
    );

    return Scaffold(
      appBar: sameAppBar(context),
      body: genderSelectBody(
          padding, spacing, textStyle, screenHeight, screenWidth, context),
    );
  }
}
