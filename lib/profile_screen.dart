import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
const ProfileScreen({super.key});

@override
State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: Text("Softwarica",
        style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w700,
        color: Colors.green,
        decoration: TextDecoration.underline,
        fontStyle: FontStyle.italic,
        ),
      ),
    ),

    body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset("Assets/images/kumari.png",
                  height: 90,
                  width: 90,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 20),
              // Posts, Followers, Following
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text("174",
                         style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        ),
                        ),
                        Text("Posts"),
                      ],
                    ),
                    Column(
                      children: [
                        Text("2.5K",
                          style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        ),
                      ),
                        Text("Followers"),
                      ],
                    ),
                    Column(
                      children: [
                        Text("320",
                          style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                        Text("Following"),
                      ],
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
// Username and Bio
Padding(
padding: const EdgeInsets.symmetric(horizontal: 16),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [

Text(
"Softwarica College",
style: TextStyle(
fontSize: 16,
fontWeight: FontWeight.bold,
),
),

const SizedBox(height: 5),

Text("Computer Science & AI"),

Text("Learning • Creating • Innovating"),

Text("Kathmandu, Nepal"),
],
),
),

const SizedBox(height: 15),

// Buttons
Padding(
padding: const EdgeInsets.symmetric(horizontal: 16),
child: Row(
children: [

Expanded(
child: ElevatedButton(
onPressed: () {},
child: Text("Edit Profile"),
),
),

const SizedBox(width: 8),

Expanded(
child: ElevatedButton(
onPressed: () {},
child: Text("Share Profile"),
),
),

],
),
),

const SizedBox(height: 15),

// Highlights
SizedBox(
height: 100,
child: ListView(
scrollDirection: Axis.horizontal,
padding: const EdgeInsets.symmetric(horizontal: 16),
children: [

_highlight(
"College",
"Assets/images/kumari.png",
),

_highlight(
"Events",
"Assets/images/kumari.png",
),

_highlight(
"Friends",
"Assets/images/kumari.png",
),

_highlight(
"Projects",
"Assets/images/interact.png",
),
],
),
),
],
),
),
);
}

Widget _highlight(String title, String imagePath) {
return Padding(
padding: const EdgeInsets.only(right: 15),
child: Column(
children: [

Container(
padding: const EdgeInsets.all(3),
decoration: BoxDecoration(
shape: BoxShape.circle,
border: Border.all(
color: Colors.grey,
width: 2,
),
),
child: ClipRRect(
borderRadius: BorderRadius.circular(50),
child: Image.asset(
imagePath,
height: 60,
width: 60,
fit: BoxFit.cover,
),
),
),

const SizedBox(height: 5),

Text(title),
],
),
);
}
}

