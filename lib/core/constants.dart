import 'package:flutter/material.dart';
import 'package:hotstar_bloc/core/colors.dart';

const String introAge =
    "By proceeding you confirm that you are 18 years of age \nand agree to the privacy policy and Terms of Use";

const String intoHeading =
    "Endless Entertainment, Free Cricket\n on mobile, and much more";

//Images
const String marveLogo =
    "https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Marvel-Comics-Logo.svg/1280px-Marvel-Comics-Logo.svg.png";

const String hotstarpecials = "assets/images/specials.png";

const String natGeo =
    "https://www.pngkey.com/png/full/540-5404050_ng-logo-white-national-geographic-logo-hd.png";

const String star = "assets/images/str.png";
const String box = "assets/images/box.png";
const String splash = "assets/images/splash.png";
const String subscribe = "assets/images/subscribe.png";
const String intro = "assets/images/intro.png";
const String mobile = "assets/images/mobile.png";

const String pixar =
    "https://1000logos.net/wp-content/uploads/2017/08/Font-Pixar-Logo.jpg";

const String starWars =
    "https://1000logos.net/wp-content/uploads/2017/06/Star-Wars-symbol.jpg";

//COlors

// White Shades

TextStyle style1 =
    const TextStyle(color: white, fontSize: 23, fontWeight: FontWeight.bold);

TextStyle style2 =
    const TextStyle(color: black, fontSize: 18, fontWeight: FontWeight.bold);

const Map<int, String> genresMap = {
  28: "Action",
  12: "Adventure",
  16: "Animation",
  35: "Comedy",
  80: "Crime",
  99: "Documentary",
  18: "Drama",
  10751: "Family",
  14: "Fantasy",
  36: "History",
  27: "Horror",
  10402: "Music",
  9648: "Mystery",
  10749: "Romance",
  878: "Science Fiction",
  10770: "TV Movie",
  53: "Thriller",
  10752: "War",
  37: "Western"
};

String getGenreName(int id) {
  return genresMap[id] ?? 'No data found.';
}
