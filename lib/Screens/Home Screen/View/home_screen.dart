import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:spotify_app/Utils/global.dart';

import '../../Song Screen/Provider/music_player_provider.dart';
import 'components/fav_artist.dart';
import 'components/home_screen_body.dart';
import 'components/home_tab_bar.dart';
import 'components/recently_played.dart';
import 'components/top_mixes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: homeScreenBody(context),
        floatingActionButton: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            alignment: Alignment.center,
            height: 65,
            width: 400,
            decoration: BoxDecoration(color: Colors.blueGrey.shade700,borderRadius: BorderRadius.circular(8)),
            // Example semi-transparent color
            child: ListTile(
              leading: Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage("Assets/Artists/mera_yaar.jpg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              title: const Text(
                "Mera Yaar",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              subtitle: const Text("Savi Kehlon"),
              trailing: FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CupertinoButton(
                      onPressed: () {
                      },
                      padding: EdgeInsets.zero,
                      child: const Icon(Icons.devices,size: 30,color: Colors.grey,),
                    ),
                    CupertinoButton(
                      onPressed: () {
                      },
                      padding: EdgeInsets.zero,
                      child: const Icon(Icons.add_circle_outline,size: 30,color: Colors.white,),
                    ),
                    CupertinoButton(
                      onPressed: () {
                      },
                      padding: EdgeInsets.zero,
                      child: const Icon(Icons.play_arrow,size: 30,color: Colors.white,),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
      ),
    );
  }


}
