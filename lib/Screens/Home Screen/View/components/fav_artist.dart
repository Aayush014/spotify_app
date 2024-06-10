import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_app/Screens/Song%20Screen/View/artist_screen.dart';

import '../../../../Utils/fav_artist_list.dart';

class FavouriteArtist extends StatelessWidget {
  const FavouriteArtist({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              " Your favourite artists",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                5,
                (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      CupertinoButton(
                        onPressed: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ArtistScreen(),
                        )),
                        padding: EdgeInsets.zero,
                        child: CircleAvatar(
                          radius: 70,
                          backgroundImage:
                              AssetImage("${favArtistList[index]['logo']}"),
                        ),
                      ),
                      Text(
                        "${favArtistList[index]['name']}",
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
