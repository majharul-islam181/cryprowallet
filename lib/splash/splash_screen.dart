import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ShaderMask(
          shaderCallback: (Rect bounds) {
            return LinearGradient(
              colors: [
                Colors.black,
                Colors.green.shade800,
                Colors.yellowAccent
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ).createShader(bounds);
          },
          child: Image.asset(
            'assets/logo.png', // Ensure this file is in the assets folder
            width: 200, // Adjust according to your design
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
