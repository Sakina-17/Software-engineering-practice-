import 'package:flutter/material.dart';

class FavouriteMusicPortal extends StatefulWidget {
const FavouriteMusicPortal({super.key});

@override
State<FavouriteMusicPortal> createState() =>
_FavouriteMusicPortalState();
}

class _FavouriteMusicPortalState extends State<FavouriteMusicPortal> {
final List<Map<String, String>> recentlyPlayed = [
{
"image": "Assets/images/img.png",
"song": "Until I Found You",
"artist": "Stephen Sanchez",
},
{
"image": "Assets/images/img_1.png",
"song": "Perfect",
"artist": "Ed Sheeran",
},
{
"image": "Assets/images/img_2.png",
"song": "Dandelions",
"artist": "Ruth B.",
},
{
"image": "Assets/images/wall paper.png",
"song": "Night Changes",
"artist": "One Direction",
},
];

final List<Map<String, String>> editorsPick = [
{
"image": "Assets/images/kumari.png",
"title": "Chill Vibes",
"subtitle": "Relax and enjoy",
},
{
"image": "Assets/images/kumari.png",
"title": "Daily Mix",
"subtitle": "Your daily favorites",
},
{
"image": "Assets/images/kumari.png",
"title": "Late Night",
"subtitle": "Music for the night",
},
{
"image": "Assets/images/kumari.png",
"title": "Feel Good",
"subtitle": "Good mood playlist",
},
];

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Colors.white,

appBar: AppBar(
backgroundColor: Colors.white,
elevation: 0,
centerTitle: true,

title: const Text(
"My Music",
style: TextStyle(
fontSize: 24,
fontWeight: FontWeight.bold,
color: Colors.black,
),
),

actions: [
IconButton(
onPressed: () {},
icon: const Icon(
Icons.settings_outlined,
color: Colors.black,
),
),
],
),

body: SingleChildScrollView(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [

// =========================
// NAME & BIO
// =========================

const Padding(
padding: EdgeInsets.symmetric(horizontal: 20),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
"@saku_music",
style: TextStyle(
color: Colors.grey,
),
),

// =========================
// RECENTLY PLAYED
// =========================

_sectionTitle(
"Recently Played",
"See All",
),
  const Padding(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Text(
      'Recently Played',
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),

// =========================
// 2021 IN REVIEW
// =========================

const Padding(
padding: EdgeInsets.symmetric(horizontal: 20),
child: Text(
"2021 in Review",
style: TextStyle(
fontSize: 22,
fontWeight: FontWeight.bold,
),
),
),

const SizedBox(height: 12),

Padding(
padding:
const EdgeInsets.symmetric(horizontal: 20),

child: Container(
height: 180,
width: double.infinity,

decoration: BoxDecoration(
borderRadius:
BorderRadius.circular(18),

image: const DecorationImage(
image: AssetImage(
"Assets/images/kumari.png",
),
fit: BoxFit.cover,
),
),

child: Container(
padding: const EdgeInsets.all(20),

decoration: BoxDecoration(
borderRadius:
BorderRadius.circular(18),

color:
Colors.black.withOpacity(0.45),
),

child: const Column(
crossAxisAlignment:
CrossAxisAlignment.start,

mainAxisAlignment:
MainAxisAlignment.end,

children: [

Text(
"Your 2021 in Review",
style: TextStyle(
color: Colors.white,
fontSize: 24,
fontWeight: FontWeight.bold,
),
),

SizedBox(height: 5),

Text(
"Your favorite songs, artists and memories",
style: TextStyle(
color: Colors.white,
),
),
],
),
),
),
),

const SizedBox(height: 30),

// =========================
// EDITOR'S PICKS
// =========================

_sectionTitle(
"Editor's Picks",
"See All",
),

const SizedBox(height: 15),

SizedBox(
height: 220,

child: ListView.builder(
scrollDirection: Axis.horizontal,

padding:
const EdgeInsets.symmetric(
horizontal: 20,
),

itemCount: editorsPick.length,

itemBuilder: (context, index) {
final item = editorsPick[index];

return Container(
width: 150,

margin:
const EdgeInsets.only(
right: 15,
),

child: Column(
crossAxisAlignment:
CrossAxisAlignment.start,

children: [

ClipRRect(
borderRadius:
BorderRadius.circular(12),

child: Image.asset(
item["image"]!,
height: 150,
width: 150,
fit: BoxFit.cover,
),
),

const SizedBox(height: 8),

Text(
item["title"]!,
style: const TextStyle(
fontWeight: FontWeight.bold,
fontSize: 15,
),
),

const SizedBox(height: 3),

Text(
item["subtitle"]!,
style: const TextStyle(
color: Colors.grey,
fontSize: 12,
),
),
],
),
);
},
),
),

const SizedBox(height: 30),

// =========================
// YOUR TOP SONGS
// =========================

_sectionTitle(
"Your Top Songs",
"See All",
),

const SizedBox(height: 10),

_topSong(
"1",
"Until I Found You",
"Stephen Sanchez",
),

_topSong(
"2",
"Perfect",
"Ed Sheeran",
),

_topSong(
"3",
"Dandelions",
"Ruth B.",
),

_topSong(
"4",
"Night Changes",
"One Direction",
),

const SizedBox(height: 30),

// =========================
// MADE FOR YOU
// =========================

_sectionTitle(
"Made For You",
"See All",
),

const SizedBox(height: 15),

Padding(
padding:
const EdgeInsets.symmetric(horizontal: 20),

child: Container(
padding: const EdgeInsets.all(18),

decoration: BoxDecoration(
borderRadius:
BorderRadius.circular(15),

color: Colors.grey.shade100,
),

child: Row(
children: [

const Icon(
Icons.auto_awesome,
size: 35,
),

const SizedBox(width: 15),

const Expanded(
child: Column(
crossAxisAlignment:
CrossAxisAlignment.start,

children: [

Text(
"Your Daily Mix",
style: TextStyle(
fontSize: 17,
fontWeight: FontWeight.bold,
),
),

SizedBox(height: 5),

Text(
"A playlist made just for you",
style: TextStyle(
color: Colors.grey,
),
),
],
),
),

IconButton(
onPressed: () {},

icon: const Icon(
Icons.play_circle_fill,
size: 35,
),
),
],
),
),
),

const SizedBox(height: 40),
],
),
),
);
}

// =========================
// PROFILE STAT
// =========================

Widget _profileStat(
String number,
String label,
) {
return Column(
children: [

Text(
number,
style: const TextStyle(
fontSize: 18,
fontWeight: FontWeight.bold,
),
),

const SizedBox(height: 3),

Text(
label,
style: const TextStyle(
color: Colors.grey,
fontSize: 12,
),
),
],
);
}

// =========================
// SECTION TITLE
// =========================

Widget _sectionTitle(
String title,
String action,
) {
return Padding(
padding:
const EdgeInsets.symmetric(horizontal: 20),

child: Row(
mainAxisAlignment:
MainAxisAlignment.spaceBetween,

children: [

Text(
title,
style: const TextStyle(
fontSize: 22,
fontWeight: FontWeight.bold,
),
),

TextButton(
onPressed: () {},

child: Text(
action,
style: const TextStyle(
color: Colors.grey,
),
),
),
],
),
);
}

// =========================
// TOP SONG
// =========================

Widget _topSong(
String number,
String song,
String artist,
) {
return ListTile(
contentPadding:
const EdgeInsets.symmetric(horizontal: 20),

leading: SizedBox(
width: 30,

child: Center(
child: Text(
number,
style: const TextStyle(
fontSize: 16,
fontWeight: FontWeight.bold,
),
),
),
),

title: Text(
song,
style: const TextStyle(
fontWeight: FontWeight.bold,
),
),

subtitle: Text(artist),

trailing: const Icon(
Icons.play_arrow,
),
);
}
}

