## Spotify Ads in Flutter
This what we are gonna achieve at the end of this flutter tutorial:
![Spotify Ads in Flutter](https://hoshcoding.com/storage/posts_thumbs/post2020_5fd69bd9c6cdd.jpg)

## Createing a new Flutter project:
As always we'll start with creating a new project, this an usual task now you can do with your IDE or command line, I'm using vs code.

## Designing the UI for spotify screen ads
So here is the code for this one screen it's very simple, notice that for this UI we'll need one sing package which is [Flutter Svg](https://pub.dev/packages/flutter_svg/install) make sure to add this dependency in your pubspec.yaml file:
```
 flutter_svg: ^0.19.2+1
```
Create a dart file you can name it what you want and copy paste this code bellow and run your app you should see a spotify screen ads, now you can customize this page and use for your purposes.
```
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpotifyAdsScreen extends StatelessWidget {
  final Color bgColor = Color(0xff4100f5);
  final Color primaryColor = Color(0xffcef564);
  final double heightSpacing = 24;
  final String urlToImage =
      "https://ggie.berkeley.edu/wp-content/uploads/2019/09/Listening_to_music_mindfully_1340x720-400x215.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/spotify.svg',
                  color: primaryColor,
                ),
                SizedBox(width: 8),
                Text(
                  "Premium",
                  style: TextStyle(color: primaryColor, fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: heightSpacing),
            Container(
              width: 260,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: NetworkImage(urlToImage), fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: heightSpacing),
            Text(
              "Find your happy place with Premium.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: primaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: heightSpacing),
            Text(
              "Play your heart out with unlimited skips.\n Free for 3 months.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: heightSpacing),
            Container(
              width: 260,
              child: FlatButton(
                color: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                padding: const EdgeInsets.only(
                  top: 20,
                  bottom: 20,
                ),
                onPressed: () {},
                child: Text(
                  "get 3 months free".toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
            SizedBox(height: heightSpacing / heightSpacing - 1),
            Container(
              width: 260,
              child: FlatButton(
                textColor: primaryColor.withOpacity(.7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                padding: const EdgeInsets.only(
                  top: 20,
                  bottom: 20,
                ),
                onPressed: () {},
                child: Text(
                  "No, thanks".toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
            SizedBox(height: heightSpacing * 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Text(
                "Individual plan only, Monthly subscription fee applies after. Limited eligibility, terms apply. Offer ends December 31, 2020",
                style: TextStyle(
                  color: Colors.white.withOpacity(.5),
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

## Download the assets and the code
You can download the assets for this design from this[ github repo](https://github.com/hichamrbib/flutter-spotify-screen-ad-ui)
