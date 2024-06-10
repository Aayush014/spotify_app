import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_app/Screens/Home%20Screen/Provider/choice_chip_provider.dart';
import 'package:spotify_app/Screens/Home%20Screen/View/home_screen.dart';
import 'package:spotify_app/Screens/Sign%20In%20Option/View/signin_option_page.dart';
import 'package:spotify_app/Screens/Sign%20In/Provider/check_box_provider.dart';
import 'package:spotify_app/Screens/Sign%20In/Provider/check_password.dart';
import 'package:spotify_app/Screens/Sign%20In/Provider/chip_provider.dart';
import 'package:spotify_app/Screens/Song%20Screen/Provider/music_player_provider.dart';
import 'package:spotify_app/Screens/Song%20Screen/View/artist_screen.dart';
import 'package:spotify_app/Utils/nav_bar.dart';

void main() {
  runApp(const MyApp()); // Added const
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LoginProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ChipProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CheckBoxProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ChoiceChipProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => AudioPlayerProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home:  const SpotifyLogin(), // Added const
      ),
    );
  }
}
