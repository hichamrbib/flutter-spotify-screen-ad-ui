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
