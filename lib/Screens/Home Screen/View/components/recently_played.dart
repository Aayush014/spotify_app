import 'package:flutter/material.dart';
import 'package:spotify_app/Screens/Home%20Screen/View/components/singer_box.dart';

import '../../../../Utils/recently_played.dart';

class RecentlyPlayed extends StatelessWidget {
  const RecentlyPlayed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: recentlyPlayed.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 4 / 1.5,
          mainAxisSpacing: 8,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) =>
            singerBox(index), // Corrected to SingerBox
      ),
    );
  }
}
