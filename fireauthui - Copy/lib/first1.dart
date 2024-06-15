import 'package:fireauth/sign_in.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class first1 extends StatefulWidget {
  const first1({super.key, required String title});

  @override
  State<first1> createState() => _first1State();
}

// ignore: camel_case_types
class _first1State extends State<first1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          // appBar: AppBar(
          //   backgroundColor: Color(0xFFEBF9FF),
          // ),
          body: Container(
        width: 500,
        decoration: const BoxDecoration(color: Color(0xFFEBF9FF)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              width: 500,
              height: 500,
              fit: BoxFit.cover,
              'images/test-1.png',
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Emergency Service',
              style: TextStyle(
                color: Colors.black,
                fontSize: 23,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Get a Emergency Services and solutions \nfrom this product and safety',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Inter',
                height: 0,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 13,
                  height: 13,
                  decoration: const ShapeDecoration(
                    color: Color(0xFF01466D),
                    shape: OvalBorder(),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 13,
                  height: 13,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: OvalBorder(),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 13,
                  height: 13,
                  decoration: const ShapeDecoration(
                    color: Color.fromARGB(255, 232, 240, 245),
                    shape: OvalBorder(),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromRGBO(1, 70, 109, 1)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => first2(),
                  ),
                );
              },
              child: const Text(
                'N e x t',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Skip',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      )),
    );
  }
}

////////////////////////////2nd BroadCast Screen////////////////////////////////

// ignore: camel_case_types
class first2 extends StatefulWidget {
  const first2({super.key});

  @override
  State<first2> createState() => _first2State();
}

// ignore: camel_case_types
class _first2State extends State<first2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          // appBar: AppBar(
          //   backgroundColor: Color(0xFFEBF9FF),
          // ),
          body: Container(
        width: 500,
        decoration: const BoxDecoration(color: Color(0xFFEBF9FF)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              width: 500,
              height: 500,
              fit: BoxFit.cover,
              'images/test-2.png',
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Emergency Service',
              style: TextStyle(
                color: Colors.black,
                fontSize: 23,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Get a Emergency Call Services and \nsolutions from this product and safety',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Inter',
                height: 0,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 13,
                  height: 13,
                  decoration: const ShapeDecoration(
                    color: Color.fromARGB(255, 232, 240, 245),
                    shape: OvalBorder(),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 13,
                  height: 13,
                  decoration: const ShapeDecoration(
                    color: Color.fromRGBO(1, 70, 109, 1),
                    shape: OvalBorder(),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 13,
                  height: 13,
                  decoration: const ShapeDecoration(
                    color: Color.fromARGB(255, 232, 240, 245),
                    shape: OvalBorder(),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromRGBO(1, 70, 109, 1)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => first3(),
                  ),
                );
              },
              child: Text(
                'N e x t',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Skip',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      )),
    );
  }
}

///////////////////////////////3rd BoardCast Screen/////////////////////////////

class first3 extends StatefulWidget {
  const first3({super.key});

  @override
  State<first3> createState() => _first3State();
}

class _first3State extends State<first3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        width: 500,
        decoration: const BoxDecoration(color: Color(0xFFEBF9FF)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              width: 500,
              height: 500,
              fit: BoxFit.cover,
              'images/test-3.png',
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Emergency Service',
              style: TextStyle(
                color: Colors.black,
                fontSize: 23,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Get a Emergency Services and solutions \nfrom this product and safety',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Inter',
                height: 0,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 13,
                  height: 13,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: OvalBorder(),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 13,
                  height: 13,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: OvalBorder(),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 13,
                  height: 13,
                  decoration: const ShapeDecoration(
                    color: Color(0xFF01466D),
                    shape: OvalBorder(),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromRGBO(1, 70, 109, 1)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => first4(),
                  ),
                );
              },
              child: const Text(
                'N e x t',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Skip',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      )),
    );
  }
}

////////////////////////// 4th BoardCast Screen ////////////////////////////////

class first4 extends StatefulWidget {
  const first4({super.key});

  @override
  State<first4> createState() => _first4State();
}

class _first4State extends State<first4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 450,
        height: 852,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(color: Color(0xFFEBF9FF)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Positioned(
              top: 0,
              bottom: 200,
              right: 0,
              left: 0,
              child: Image.asset(
                fit: BoxFit.cover,
                'images/test-4.png',
                width: 450,
                height: 550,
              ),
            ),
            Column(
              children: [
                Positioned(
                  left: 100,
                  top: 550,
                  child: SizedBox(
                    width: 200,
                    height: 40,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(1, 70, 109, 1)),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => first6(),
                          ),
                        );
                      },
                      child: const Text(
                        'Login as User',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Positioned(
                  left: 100,
                  top: 630,
                  child: SizedBox(
                    width: 200,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => first6(),
                          ),
                        );
                      },
                      child: const Text('Login as Admin'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
