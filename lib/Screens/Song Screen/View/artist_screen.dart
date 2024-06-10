import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_app/Screens/Song%20Screen/View/music_player.dart';
import 'package:spotify_app/Utils/global.dart';
import 'package:spotify_app/Utils/my_songs.dart';

import '../Provider/music_player_provider.dart';

class ArtistScreen extends StatelessWidget {
  const ArtistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final audioProvider = Provider.of<AudioPlayerProvider>(context);

    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topLeft,
              height: 300,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                      image: AssetImage("Assets/Artists/the_masterz.jpg"),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: const EdgeInsets.only(top: 40, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black26,
                      radius: 30,
                      child: CupertinoButton(
                        padding: EdgeInsets.zero,
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      "The Masterz",
                      style: TextStyle(
                          fontSize: 45, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "2.3M monthly listeners",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage:
                          AssetImage("Assets/Artists/the_masterz.jpg"),
                          radius: 25,
                        ),
                        const Text("       "),
                        Container(
                          alignment: Alignment.center,
                          height: 38,
                          width: 95,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  color: Colors.white, width: 1.5)),
                          child: const Text("Follow"),
                        ),
                        const Spacer(),
                        const Icon(CupertinoIcons.ellipsis_vertical),
                        const Spacer(),
                        const Icon(CupertinoIcons.shuffle),
                        const Text("      "),
                        const CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 35,
                          child: Icon(
                            CupertinoIcons.play_arrow_solid,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                  const Text(
                    "  Popular",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: mySongs.length,
                itemBuilder: (context, index) => CupertinoButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const MusicPlayer(),
                    ));
                    audioProvider.changeIndex(index);
                    audioProvider.openAudio();
                  },
                  child: DefaultTextStyle(
                    style: const TextStyle(color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 70,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Text("      ${index + 1}      "),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "${mySongs[index]['logo']}"),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                mySongs[index]['name'],
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Icon(
                              CupertinoIcons.ellipsis_vertical,
                              color: Colors.white,
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
