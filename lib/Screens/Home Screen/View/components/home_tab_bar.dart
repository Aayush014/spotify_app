import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_app/Utils/global.dart';

import 'content_chip.dart';

class HomeTabBar extends StatelessWidget {
  const HomeTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.teal,
            child: Text(
               txtName.text[0],
              style: GoogleFonts.montserrat(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          const MyChoiceChip(),
        ],
      ),
    );
  }
}