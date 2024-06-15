import 'package:flutter/material.dart';

// Header widget to display the title of the screen on every page
class HeaderWidget extends StatelessWidget {
  final String title;
  // based on the screen, back button will be shown or hidden
  final bool showBackButton;

  const HeaderWidget(
      {Key? key, required this.title, this.showBackButton = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: 97,
            decoration: BoxDecoration(color: Color(0xFF01466D)),
          ),
          Container(
            height: 97,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(1.00, 0.00),
                end: Alignment(-1, 0),
                colors: [
                  Color.fromARGB(255, 0, 133, 226),
                  Color.fromARGB(255, 0, 119, 196),
                  Color.fromARGB(255, 1, 105, 169),
                  Color.fromARGB(255, 1, 91, 145),
                  Color.fromARGB(255, 1, 81, 127),
                  Color.fromARGB(255, 1, 71, 110)
                ],
              ),
            ),
          ),
          if (showBackButton)
            Positioned(
              top: 30,
              left: 10,
              child: InkWell(
                onTap: () {
                  // back button will navigate to the previous screen
                  Navigator.pop(context);
                },
                child: Container(
                  width: 41,
                  height: 40,
                  margin: EdgeInsets.only(right: 32),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/left.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          Container(
            margin: EdgeInsets.only(top: 30, left: showBackButton ? 65 : 30),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
