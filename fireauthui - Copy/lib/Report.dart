import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fireauth/Details.dart';
import 'package:fireauth/Navbar.dart';
import 'package:flutter/material.dart';

class Report extends StatefulWidget {
  Report({Key? key}) : super(key: key);

  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
  //Variables
  String? selectedDesasterType;
  String? selectedLocation;
  String? selectedSituation;
  String? selectedContact;

  final desasterType = <String>[
    'Earthquake',
    'Flood',
    'Fire',
    'Hurricane',
    'Tornado',
  ];

  final desasterLocation = <String>[
    'Colombo',
    'Gampaha',
    'Kalutara',
    'Kandy',
    'Matale',
    'Nuwara Eliya',
    'Galle',
    'Matara',
    'Hambantota',
    'Jaffna',
    'Kilinochchi',
    'Mannar',
    'Mullaitivu',
    'Vavuniya',
    'Batticaloa',
    'Ampara',
    'Trincomalee',
    'Kurunegala',
    'Puttalam',
    'Anuradhapura',
    'Polonnaruwa',
    'Badulla',
    'Monaragala',
    'Ratnapura',
    'Kegalle'
  ];

  final situation = [
    'Ongoing',
    'UnderControl',
    'Resolved',
    'Other',
  ];

  final contacts = <String>[
    '077688577',
    '042678788',
    '098352569',
    '087433452',
    '077688577',
    '042678788',
    '098352569',
    '087433452',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          backgroundColor: Color.fromARGB(255, 64, 139, 204),
          title: const Text(
            'Report Disaster',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildDropdownButton(
                items: desasterType,
                hintText: 'Disaster Type',
                onChanged: (value) {
                  setState(() {
                    selectedDesasterType = value;
                  });
                },
                selectedValue: selectedDesasterType,
              ),
              buildDropdownButton(
                items: desasterLocation,
                hintText: 'Select Location',
                onChanged: (value) {
                  setState(() {
                    selectedLocation = value;
                  });
                },
                selectedValue: selectedLocation,
              ),
              buildDropdownButton(
                items: situation,
                hintText: 'Current Situation',
                onChanged: (value) {
                  setState(() {
                    selectedSituation = value;
                  });
                },
                selectedValue: selectedSituation,
              ),
              buildDropdownButton(
                items: contacts,
                hintText: 'Emergency Contact',
                onChanged: (value) {
                  setState(() {
                    selectedContact = value;
                  });
                },
                selectedValue: selectedContact,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[900],
                ),
                onPressed: () async {
                  var db = FirebaseFirestore.instance;

                  // Create a new user with a first and last name
                  final ReportData = <String, dynamic>{
                    "Desaster Type": selectedDesasterType,
                    "Location": selectedLocation,
                    "Current Situation": selectedSituation,
                    "Emegency Contact": selectedContact
                  };

                  // Add a new document with a generated ID

                  try {
                    var res = await db.collection("Desaster").add(ReportData);
                  } catch (e) {
                    print(e);
                  }
                },
                child: const Text(
                  "Report",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailPage()),
                    );
                  },
                  child: Text("View Report")),
              NavBar()
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDropdownButton({
    required List<String> items,
    required String hintText,
    required Function(String?) onChanged,
    required String? selectedValue,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      width: 325,
      height: 50,
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(50),
      ),
      child: DropdownButton(
        borderRadius: BorderRadius.zero,
        items: items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (value) {
          onChanged(value as String?);
        },
        isExpanded: true,
        hint: Text(selectedValue ?? hintText),
      ),
    );
  }
}
