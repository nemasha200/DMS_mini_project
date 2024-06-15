import 'package:fireauth/dashboard.dart';
import 'package:fireauth/first1.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MaterialApp(
      home: first1(
    title: '',
  )));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 393,
      height: 852,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(color: Color(0xFFEBF9FF)),
      child: Stack(
        children: [
          Positioned(
            left: 22,
            top: 247,
            child: Container(
              width: 349,
              height: 338,
            ),
          ),
          Positioned(
            top: 0,
            bottom: 50,
            right: 0,
            left: 0,
            child: Image.asset(
              'images/tt.jpg',
              width: 200,
              height: 198,
            ),
          ),
          const Positioned(
            left: 62,
            top: 732,
            child: SizedBox(
              width: 298,
              height: 32,
              child: Text(
                'Copyright @ EmergencyMaster\nPublished by 2024',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 11,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w200,
                  height: 0,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 80,
            left: 20,
            right: 20,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const first1(
                              title: 'DashBoard',
                            )),
                  );
                },
                child: Text('WelCome'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
