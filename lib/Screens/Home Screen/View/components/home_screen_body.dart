import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_app/Screens/Home%20Screen/View/components/recently_played.dart';
import 'package:spotify_app/Screens/Home%20Screen/View/components/top_mixes.dart';

import '../../../../Utils/global.dart';
import 'fav_artist.dart';
import 'home_tab_bar.dart';

CustomScrollView homeScreenBody(BuildContext context) {
  return CustomScrollView(
    slivers: [
      SliverAppBar(
        // backgroundColor: Colors.black,
        elevation: 0,
        surfaceTintColor: Theme.of(context).scaffoldBackgroundColor,
        foregroundColor: Colors.red,
        title: Text(
          "Good ${greetings()}",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        expandedHeight: 90.0,
        floating: true,
        toolbarHeight: 150,
        pinned: true,
        bottom: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 48),
          child: const HomeTabBar(),
        ),
        flexibleSpace: FlexibleSpaceBar(
          background: Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            height: 100,
          ),
        ),
        actions: [
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            child: const Icon(
              Icons.notifications_none,
              color: Colors.white,
              size: 28,
            ),
          ),
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            child: const Icon(
              CupertinoIcons.timer,
              color: Colors.white,
              size: 28,
            ),
          ),
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            child: const Icon(
              Icons.settings_outlined,
              color: Colors.white,
              size: 28,
            ),
          ),
        ],
        scrolledUnderElevation: 10,
        automaticallyImplyLeading: false,
      ),
      const SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.all(1),
          child: Column(
            children: [
              RecentlyPlayed(),
              FavouriteArtist(),
              TopMixes(),
              SizedBox(
                height: 70,
              )
            ],
          ),
        ),
      ),
    ],
  );
}