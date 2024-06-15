import 'package:fireauth/Navbar.dart';
import 'package:fireauth/earthqaukes.dart';
import 'package:fireauth/fire.dart';
import 'package:fireauth/widgets/category.dart';
import 'package:fireauth/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:fireauth/tsunami.dart';
import 'package:fireauth/flood.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBF9FF),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              // Created new widget for header. Located in widgets/header.dart
              HeaderWidget(title: 'Preparedness', showBackButton: true),
              CategoryItem(
                image: 'images/tsunami.jpg',
                title: 'Tsunami',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TsunamiScreen()),
                  );
                },
              ),
              // Created new widget for category items. Located in widgets/category.dart
              CategoryItem(
                image: 'images/flod.jpg',
                title: 'Flood',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FloodScreen()),
                  );
                },
              ),
              CategoryItem(
                image: 'images/earth.jpg',
                title: 'Earthquakes',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EarthquakeScreen()),
                  );
                },
              ),
              CategoryItem(
                image: 'images/firs.jpg',
                title: 'Fire',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FireScreen()),
                  );
                },
              ),

              NavBar()
            ],
          ),
        ),
      ),
    );
  }
}
