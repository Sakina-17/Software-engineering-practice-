// import 'package:flutter/material.dart';
//
// class FavouriteMusicPortal extends StatefulWidget {
//   const FavouriteMusicPortal({super.key});
//
//   @override
//   State<FavouriteMusicPortal> createState() =>
//       _FavouriteMusicPortalState();
// }
//
// class _FavouriteMusicPortalState extends State<FavouriteMusicPortal> {
//   // Recently Played Songs
//   final List<Map<String, String>> recentlyPlayed = [
//     {
//       "image": "Assets/images/img.png",
//       "song": "Until I Found You",
//       "artist": "Stephen Sanchez",
//     },
//     {
//       "image": "Assets/images/img_1.png",
//       "song": "Perfect",
//       "artist": "Ed Sheeran",
//     },
//     {
//       "image": "Assets/images/img_2.png",
//       "song": "Dandelions",
//       "artist": "Ruth B.",
//     },
//     {
//       "image": "Assets/images/wall paper.png",
//       "song": "Night Changes",
//       "artist": "One Direction",
//     },
//   ];
//
//   // Editor's Picks
//   final List<Map<String, String>> editorsPick = [
//     {
//       "image": "Assets/images/kumari.png",
//       "title": "Chill Vibes",
//       "subtitle": "Relax and enjoy",
//     },
//     {
//       "image": "Assets/images/kumari.png",
//       "title": "Daily Mix",
//       "subtitle": "Your daily favorites",
//     },
//     {
//       "image": "Assets/images/kumari.png",
//       "title": "Late Night",
//       "subtitle": "Music for the night",
//     },
//     {
//       "image": "Assets/images/kumari.png",
//       "title": "Feel Good",
//       "subtitle": "Good mood playlist",
//     },
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//
//       // =========================
//       // APP BAR
//       // =========================
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         centerTitle: true,
//         title: const Text(
//           "My Music",
//           style: TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//             color: Colors.black,
//           ),
//         ),
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(
//               Icons.settings_outlined,
//               color: Colors.black,
//             ),
//           ),
//         ],
//       ),
//
//       // =========================
//       // BODY
//       // =========================
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//
//             const SizedBox(height: 20),
//
//             // =========================
//             // RECENTLY PLAYED
//             // =========================
//             _sectionTitle(
//               "Recently Played",
//               "See All",
//             ),
//
//             const SizedBox(height: 15),
//
//             SizedBox(
//               height: 145,
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 itemCount: recentlyPlayed.length,
//                 itemBuilder: (context, index) {
//                   final item = recentlyPlayed[index];
//
//                   return _recentlyPlayedItem(
//                     item["image"]!,
//                     item["song"]!,
//                     item["artist"]!,
//                   );
//                 },
//               ),
//             ),
//
//             const SizedBox(height: 30),
//
//             // =========================
//             // 2021 IN REVIEW
//             // =========================
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Text(
//                 "2021 in Review",
//                 style: const TextStyle(
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//
//             const SizedBox(height: 15),
//
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Container(
//                 width: double.infinity,
//                 height: 180,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   image: const DecorationImage(
//                     image: AssetImage(
//                       "Assets/images/kumari.png",
//                     ),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 child: Container(
//                   padding: const EdgeInsets.all(20),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     gradient: LinearGradient(
//                       begin: Alignment.bottomCenter,
//                       end: Alignment.topCenter,
//                       colors: [
//                         Colors.black.withOpacity(0.7),
//                         Colors.transparent,
//                       ],
//                     ),
//                   ),
//                   alignment: Alignment.bottomLeft,
//                   child: const Text(
//                     "Your year in music",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 22,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//
//             const SizedBox(height: 30),
//
//             // =========================
//             // EDITOR'S PICKS
//             // =========================
//             _sectionTitle(
//               "Editor's Picks",
//               "See All",
//             ),
//
//             const SizedBox(height: 15),
//
//             SizedBox(
//               height: 190,
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 itemCount: editorsPick.length,
//                 itemBuilder: (context, index) {
//                   final item = editorsPick[index];
//
//                   return _editorPickItem(
//                     item["image"]!,
//                     item["title"]!,
//                     item["subtitle"]!,
//                   );
//                 },
//               ),
//             ),
//
//             const SizedBox(height: 30),
//
//             // =========================
//             // YOUR TOP SONGS
//             // =========================
//             _sectionTitle(
//               "Your Top Songs",
//               "See All",
//             ),
//
//             const SizedBox(height: 10),
//
//             _topSong(
//               "1",
//               "Until I Found You",
//               "Stephen Sanchez",
//               "Assets/images/img.png",
//             ),
//
//             _topSong(
//               "2",
//               "Perfect",
//               "Ed Sheeran",
//               "Assets/images/img_1.png",
//             ),
//
//             _topSong(
//               "3",
//               "Dandelions",
//               "Ruth B.",
//               "Assets/images/img_2.png",
//             ),
//
//             _topSong(
//               "4",
//               "Night Changes",
//               "One Direction",
//               "Assets/images/wall paper.png",
//             ),
//
//             const SizedBox(height: 30),
//
//             // =========================
//             // MADE FOR YOU
//             // =========================
//             _sectionTitle(
//               "Made For You",
//               "See All",
//             ),
//
//             const SizedBox(height: 15),
//
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Container(
//                 height: 120,
//                 decoration: BoxDecoration(
//                   color: Colors.deepPurple.shade50,
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Row(
//                   children: [
//                     ClipRRect(
//                       borderRadius: const BorderRadius.only(
//                         topLeft: Radius.circular(20),
//                         bottomLeft: Radius.circular(20),
//                       ),
//                       child: Image.asset(
//                         "Assets/images/kumari.png",
//                         width: 120,
//                         height: 120,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//
//                     const SizedBox(width: 15),
//
//                     const Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Daily Mix",
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//
//                         SizedBox(height: 5),
//
//                         Text(
//                           "Made especially for you",
//                           style: TextStyle(
//                             color: Colors.grey,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//
//             const SizedBox(height: 30),
//           ],
//         ),
//       ),
//     );
//   }
//
//   // =========================
//   // SECTION TITLE
//   // =========================
//   Widget _sectionTitle(
//       String title,
//       String action,
//       ) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             title,
//             style: const TextStyle(
//               fontSize: 22,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//
//           Text(
//             action,
//             style: TextStyle(
//               color: Colors.deepPurple.shade400,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   // =========================
//   // RECENTLY PLAYED ITEM
//   // =========================
//   Widget _recentlyPlayedItem(
//       String image,
//       String song,
//       String artist,
//       ) {
//     return Container(
//       width: 120,
//       margin: const EdgeInsets.only(right: 18),
//       child: Column(
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(50),
//             child: Image.asset(
//               image,
//               width: 110,
//               height: 75,
//               fit: BoxFit.cover,
//             ),
//           ),
//
//           const SizedBox(height: 8),
//
//           Text(
//             song,
//             maxLines: 1,
//             overflow: TextOverflow.ellipsis,
//             textAlign: TextAlign.center,
//             style: const TextStyle(
//               fontWeight: FontWeight.w600,
//               fontSize: 13,
//             ),
//           ),
//
//           const SizedBox(height: 2),
//
//           Text(
//             artist,
//             maxLines: 1,
//             overflow: TextOverflow.ellipsis,
//             textAlign: TextAlign.center,
//             style: const TextStyle(
//               color: Colors.grey,
//               fontSize: 11,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   // =========================
//   // EDITOR'S PICK ITEM
//   // =========================
//   Widget _editorPickItem(
//       String image,
//       String title,
//       String subtitle,
//       ) {
//     return Container(
//       width: 145,
//       margin: const EdgeInsets.only(right: 15),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(15),
//             child: Image.asset(
//               image,
//               width: 145,
//               height: 145,
//               fit: BoxFit.cover,
//             ),
//           ),
//
//           const SizedBox(height: 8),
//
//           Text(
//             title,
//             maxLines: 1,
//             overflow: TextOverflow.ellipsis,
//             style: const TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 15,
//             ),
//           ),
//
//           const SizedBox(height: 3),
//
//           Text(
//             subtitle,
//             maxLines: 1,
//             overflow: TextOverflow.ellipsis,
//             style: const TextStyle(
//               color: Colors.grey,
//               fontSize: 12,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   // =========================
//   // TOP SONG ITEM
//   // =========================
//   Widget _topSong(
//       String number,
//       String song,
//       String artist,
//       String image,
//       ) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(
//         horizontal: 20,
//         vertical: 7,
//       ),
//       child: Row(
//         children: [
//           SizedBox(
//             width: 25,
//             child: Text(
//               number,
//               style: const TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.grey,
//               ),
//             ),
//           ),
//
//           ClipRRect(
//             borderRadius: BorderRadius.circular(10),
//             child: Image.asset(
//               image,
//               width: 55,
//               height: 55,
//               fit: BoxFit.cover,
//             ),
//           ),
//
//           const SizedBox(width: 15),
//
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   song,
//                   maxLines: 1,
//                   overflow: TextOverflow.ellipsis,
//                   style: const TextStyle(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 15,
//                   ),
//                 ),
//
//                 const SizedBox(height: 4),
//
//                 Text(
//                   artist,
//                   maxLines: 1,
//                   overflow: TextOverflow.ellipsis,
//                   style: const TextStyle(
//                     color: Colors.grey,
//                     fontSize: 12,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//
//           const Icon(
//             Icons.more_vert,
//             color: Colors.grey,
//           ),
//         ],
//       ),
//     );
//   }
// }