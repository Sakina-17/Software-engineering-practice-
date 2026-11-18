import 'package:flutter/material.dart';
class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      )
      body: Column(
        children: [
          Text("Sign In",style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 24,
      color: Colors.blue
    ),)
        ],
      ),
    );
  }
}
