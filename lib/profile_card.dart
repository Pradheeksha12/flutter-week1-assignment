import 'package:flutter/material.dart';

void main() {
  runApp(ProfileCardApp());
}

class ProfileCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Color(0xFFFFE6F0),

        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text("Profile Card"),
          centerTitle: true,
        ),

        body: Center(
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
              mainAxisSize: MainAxisSize.min,
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
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),

                SizedBox(height: 10),

                Text(
                  "Information Technology",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                  ),
                ),

                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Icon(Icons.email, color: Colors.pink),

                    SizedBox(width: 10),

                    Text("pradheeksha@gmail.com"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}