import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_app/Utils/recently_played.dart';

import '../../../../Utils/fav_artist_list.dart';

class TopMixes extends StatelessWidget {
  const TopMixes({super.key});

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
              " Your top mixes",
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
                  topMixes.length,
                      (index) => Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 140,
                          width: 140,
                          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("${topMixes[index]['logo']}"))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 25,child: Image.asset("Assets/Img/s_w_logo.png")),
                              Spacer(),
                              Container(
                                height: 20,
                                width: 7,
                                color: Colors.cyan.shade400,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 10,
                                width: 140,
                                color: Colors.cyan.shade400,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "${topMixes[index]['name']}",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                ),
              )
            // GridView.builder(
            //
            //   shrinkWrap: false,
            //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 1,
            //   ),
            //   itemBuilder: (context, index) => Center(child: const CircleAvatar()),
            //   itemCount: 5, // Add itemCount, it should not be null
            // ),
          )
        ],
      ),
    );
  }
}