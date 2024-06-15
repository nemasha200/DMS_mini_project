import 'package:fireauth/Preparedness.dart';
import 'package:fireauth/Report.dart';
import 'package:fireauth/dashboard.dart';
import 'package:fireauth/weather.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
              child: Container(
                height: 70,
                width: 50,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'images/D-Bell.png', // Provide the path to your image asset
                      width: 50, // Adjust width as needed
                      height: 50, // Adjust height as needed
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => first7(),
                  ),
                );
              }),
          GestureDetector(
              child: Container(
                height: 70,
                width: 50,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'images/D-Loc.png', // Provide the path to your image asset
                      width: 50, // Adjust width as needed
                      height: 50, // Adjust height as needed
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Report(),
                  ),
                );
              }),
          GestureDetector(
              child: Container(
                height: 70,
                width: 50,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'images/D-report.png', // Provide the path to your image asset
                      width: 50, // Adjust width as needed
                      height: 50, // Adjust height as needed
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DashboardScreen(),
                  ),
                );
              }),
          GestureDetector(
              child: Container(
                height: 70,
                width: 50,
                padding: EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'images/D-Cloud.png', // Provide the path to your image asset
                      width: 50, // Adjust width as needed
                      height: 50, // Adjust height as needed
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => weather(),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
