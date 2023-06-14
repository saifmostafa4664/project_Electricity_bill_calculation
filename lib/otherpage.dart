import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_c_out/welcomepage.dart';

class ProjectPage extends StatelessWidget {
  final String projectName = "Electricity Bill Calculator";
  final List<String> projectOwners = [
    "Saif Mustafa Yahya",
    "Tarek Ragab Khamees",
    "Saif Mustafa Nagy",
    "Shahd Sayed Abdelaal",
    "Shahd Mahmoud Abdelrahman",
    "Tarek Mahmoud Farag",
    "Saif Mohamed Fathy",
  ];

  final String projectDescription =
      "The Electricity Bill Calculator is a mobile application that allows users to input their electricity consumption units and calculate their monthly bill. It helps users to track their electricity usage and manage their expenses. The app also allows users to input their name and view their past billing history.";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: projectName,
      home: Scaffold(
        appBar: AppBar(
            title: Text(projectName),
            backgroundColor: const Color.fromARGB(255, 75, 135, 165),
            actions: [
              IconButton(
                icon: Icon(Icons.arrow_back_sharp),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WelcomePage()),
                  );
                },
              ),
            ]),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Center(
                child: Text(
                  projectName,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey[900],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  projectDescription,
                  style: TextStyle(fontSize: 20, color: Colors.grey[800]),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Project Owners:",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: projectOwners
                          .map(
                            (owner) => Text(
                              "- $owner",
                              style: TextStyle(fontSize: 20),
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Text(
                  "Designed by Saif Mustafa",
                  style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
