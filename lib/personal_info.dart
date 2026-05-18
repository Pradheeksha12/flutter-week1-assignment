import 'package:flutter/material.dart';

void main() {
  runApp(PersonalInfoApp());
}

class PersonalInfoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Color(0xFFFFE6F0),

        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text("Personal Info App"),
          centerTitle: true,
        ),

        body: SingleChildScrollView(
          child: Center(
            child: Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),

                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                  ),
                ],
              ),

              child: Column(
                children: [

                  CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                      'https://i.pravatar.cc/300?img=47',
                    ),
                  ),

                  SizedBox(height: 20),

                  Text(
                    "Pradheeksha",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Information Technology Student",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black54,
                    ),
                  ),

                  SizedBox(height: 25),

                  Divider(),

                  ListTile(
                    leading: Icon(Icons.email, color: Colors.pink),
                    title: Text("pradheeksha@gmail.com"),
                  ),

                  ListTile(
                    leading: Icon(Icons.phone, color: Colors.pink),
                    title: Text("+91 9876543210"),
                  ),

                  ListTile(
                    leading: Icon(Icons.location_on, color: Colors.pink),
                    title: Text("Chennai, Tamil Nadu"),
                  ),

                  Divider(),

                  SizedBox(height: 15),

                  Text(
                    "Skills",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                    ),
                  ),

                  SizedBox(height: 15),

                  Wrap(
                    spacing: 10,
                    runSpacing: 10,

                    children: [

                      Chip(
                        label: Text("Flutter"),
                        backgroundColor: Colors.pink[100],
                      ),

                      Chip(
                        label: Text("Dart"),
                        backgroundColor: Colors.pink[100],
                      ),

                      Chip(
                        label: Text("UI/UX"),
                        backgroundColor: Colors.pink[100],
                      ),

                      Chip(
                        label: Text("Python"),
                        backgroundColor: Colors.pink[100],
                      ),

                      Chip(
                        label: Text("Java"),
                        backgroundColor: Colors.pink[100],
                      ),
                    ],
                  ),

                  SizedBox(height: 30),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,

                      padding: EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 15,
                      ),
                    ),

                    onPressed: () {},

                    child: Text(
                      "Keep Learning",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}