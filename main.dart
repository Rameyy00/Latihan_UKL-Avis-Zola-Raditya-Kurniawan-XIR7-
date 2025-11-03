import 'package:flutter/material.dart';
import 'screen/screen_tukang.dart'; 
import 'screen/splash_screen.dart'; 
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tukang.com App',
      theme: ThemeData(
        primarySwatch: Colors.yellow, 
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Roboto', 
      ),
      home: const SplashScreenHandler(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreenHandler extends StatefulWidget {
  const SplashScreenHandler({super.key});

  @override
  State<SplashScreenHandler> createState() => _SplashScreenHandlerState();
}

class _SplashScreenHandlerState extends State<SplashScreenHandler> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const MainScreenTukang(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return const SplashScreen(); 
  }
}