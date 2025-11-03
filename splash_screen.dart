

import 'package:flutter/material.dart';

const Color tukangYellow = Color(0xFFFFC300); 

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: tukangYellow, 
      body: Center(
        
        child: Icon(
          Icons.engineering, 
          size: 100.0, 
          color: Colors.black, 
        ),
      ),
    );
  }
}