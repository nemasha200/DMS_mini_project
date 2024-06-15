import 'package:fireauth/widgets/header.dart';
import 'package:flutter/material.dart';

class FireScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HeaderWidget(
            title: 'Fire',
            showBackButton: true,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Safety Guidelines',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              '+ Install smoke alarms on every level of your home.\n+ Test smoke alarms monthly.\n+ Create a fire escape plan and practice it regularly.\n+ Keep flammable items away from heat sources.\n+ Teach children about the dangers of fire and how to respond in case of emergency.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Container(
              width: 324,
              height: 270,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage('images/ff.jpg'),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(41),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
