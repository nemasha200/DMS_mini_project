import 'package:flutter/material.dart';
import 'package:fireauth/widgets/header.dart';

class FloodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HeaderWidget(
            title: 'Flood',
            showBackButton: true,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Guidelines',
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
              '+ Be alert.\n+ Assemble disaster supplies:\n+ Be prepared to evacuate.\n+ Review your Family Disaster Plan.\n+ Protect your property.\n+ Don'
              't drive unless you have to. If you must drive, travel with care.\n+ NEVER drive through flooded roadways. STOP! Turn Around Don'
              't Drown',
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
                  image: AssetImage('images/fN.jpg'),
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
