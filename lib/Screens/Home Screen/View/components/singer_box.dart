import 'package:flutter/material.dart';
import 'package:spotify_app/Utils/recently_played.dart';

Widget singerBox(int index) => Container(
      height: 65,
      width: 180,
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 1 / 1,
            child: Container(
              alignment: Alignment.center,
              height: 72,
              width: 72,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("${recentlyPlayed[index]['logo']}"),
                    fit: BoxFit.cover),
                // color: Colors.white70,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  topLeft: Radius.circular(5),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text(
              " ${recentlyPlayed[index]['name']}",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
