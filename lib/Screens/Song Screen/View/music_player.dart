import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../Utils/my_songs.dart';
import '../Provider/music_player_provider.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  @override
  Widget build(BuildContext context) {
    final audioProvider = Provider.of<AudioPlayerProvider>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          CupertinoButton(
            onPressed: () {},
            child: const Icon(
              CupertinoIcons.ellipsis_vertical,
              color: Colors.white,
            ),
          ),
        ],
        title: const Column(
          children: [
            Text(
              "PLAYING FROM ARTIST",
              style: TextStyle(fontSize: 15),
            ),
            Text(
              "Best of The Masterz 🎸",
              style: TextStyle(fontSize: 13),
            ),
          ],
        ),
        leading: CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () => Navigator.of(context).pop(),
          child: const Icon(
            CupertinoIcons.chevron_down,
            size: 35,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue.shade700,
              Colors.black54,
              Colors.black,
            ],
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 120,
            ),
            Container(
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "${mySongs[audioProvider.songIndex]['logo']}"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20, right: 20),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        mySongs[audioProvider.songIndex]['name'],
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "Savi Kehlon",
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 3)),
                    child: const Icon(
                      CupertinoIcons.add,
                      size: 30,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: 1.5,
                thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6),
              ),
              child: Slider(
                activeColor: Colors.white,
                value: audioProvider.sliderValue,
                max: audioProvider.maxDuration > 0
                    ? audioProvider.maxDuration
                    : 1.0,
                onChanged: (value) {
                  if (audioProvider.maxDuration > 0) {
                    audioProvider.seek(value);
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('${audioProvider.sliderValue ~/ 60}:'),
                      Text((audioProvider.sliderValue.toInt() % 60)
                          .toString()
                          .padLeft(2, '0')),
                    ],
                  ),
                  Row(
                    children: [
                      Text('${audioProvider.maxDuration ~/ 60}:'),
                      Text('${(audioProvider.maxDuration.toInt() % 60).toString()..padRight(2, '0')}'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CupertinoButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  child: const Icon(
                    CupertinoIcons.shuffle,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
                CupertinoButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                     audioProvider.restart();
                  },
                  child: const Icon(
                    CupertinoIcons.backward_end_fill,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
                CupertinoButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    audioProvider.togglePlayPause();
                  },
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: Icon(
                      audioProvider.isPlaying
                          ? CupertinoIcons.pause
                          : CupertinoIcons.play_arrow_solid,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ),
                CupertinoButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                     audioProvider.nextAudio();
                  },
                  child: const Icon(
                    CupertinoIcons.forward_end_fill,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
                CupertinoButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    audioProvider.restart();
                  },
                  child: const Icon(
                    CupertinoIcons.return_icon,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.headphones,
                        color: Colors.green,
                      ),
                      Text(
                        "  Rockerz 450",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.share),
                  Text("         "),
                  Icon(CupertinoIcons.list_bullet_below_rectangle),
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
