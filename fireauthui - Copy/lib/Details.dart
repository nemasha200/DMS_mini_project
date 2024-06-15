import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  // String Location = "";

  @override
  State<DetailPage> createState() => _DetailPageState();
}

String Type = "";
String DLocation = "";
String DSituation = "";
String EContact = "";

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          backgroundColor: Colors.lightBlue,
          title: const Text(
            'Report Disaster',
            style: TextStyle(color: Colors.white),
          ),
        ),
        // backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                    height: 50,
                    width: 320,
                    padding: EdgeInsets.only(left: 8.0, right: 30),
                    decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Desaster Type:  " + "${Type}",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )),
                Container(
                    height: 50,
                    width: 320,
                    padding: EdgeInsets.only(left: 8.0, right: 30),
                    decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Desaster Location:  " + "${DLocation}",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )),
                Container(
                    height: 50,
                    width: 320,
                    padding: EdgeInsets.only(left: 8.0, right: 30),
                    decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Current Situation:  " + "${DSituation}",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )),
                Container(
                    height: 50,
                    width: 320,
                    padding: EdgeInsets.only(left: 8.0, right: 30),
                    decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Contact:  " + "${EContact}",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )),
                SizedBox(
                  height: 0,
                ),
                ElevatedButton(
                    onPressed: () async {
                      var db = FirebaseFirestore.instance;

                      try {
                        // final Loc = db.collection("Desaster");
                        // var res = await Loc.get();
                        // print(res);

                        await db.collection("Desaster").get().then((event) {
                          for (var doc in event.docs) {
                            setState(() {
                              Type = "${doc["Desaster Type"]}";
                              DLocation = "${doc["Location"]}";
                              DSituation = "${doc["Current Situation"]}";
                              EContact = "${doc["Emegency Contact"]}";
                            });
                            print("${doc.id} => ${doc.data()}");
                          }
                        });
                      } catch (e) {
                        print(e);
                      }
                    },
                    child: Text("View"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
