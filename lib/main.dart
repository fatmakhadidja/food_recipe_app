import 'package:flutter/material.dart';
import 'Home.dart';

void main() {
  runApp(const MyApp()); // Use MyApp instead of Launch
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Define the initial route or the home page here
      home: Launch(), // Launch screen as the home page
      routes: {
        '/home': (context) => Home(), // Home screen
      },
    );
  }
}

// Define common text styles
const TextStyle headlineStyle = TextStyle(
  fontSize: 56,
  color: Colors.white,
  fontWeight: FontWeight.w800,
);

const TextStyle subtitleStyle = TextStyle(
  fontSize: 16,
  color: Colors.white,
  fontWeight: FontWeight.w400,
);

const TextStyle rowTextStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w600,
  color: Colors.white,
);

class Launch extends StatelessWidget {
  const Launch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/LaunchPage image.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Top row with Icon and Text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.star, size: 20, color: Colors.white),
                SizedBox(width: 10),
                Text('60k+', style: rowTextStyle),  // Reused row text style
                SizedBox(width: 5),
                Text('Premium Recipes', style: subtitleStyle),  // Reused subtitle style
              ],
            ),

            const SizedBox(height: 250),

            // Headline Text
            const Text('Let\'s', style: headlineStyle),
            const Text('Cook', style: headlineStyle),

            // Subtext
            const Text('Find best recipes for cooking', style: subtitleStyle),

            const SizedBox(height: 150),

            // Start Cooking Button
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
              child: Container(
                height: 54,
                width: 206,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: const Color(0xFFE23E3E),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Start cooking', style: subtitleStyle),  // Reused button text style
                    SizedBox(width: 5),
                    Icon(Icons.arrow_right_alt, color: Colors.white, size: 30),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
