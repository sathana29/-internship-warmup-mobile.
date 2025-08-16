import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final List<String> skills = ['React.js', 'Java', 'MySQL', 'Git'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0F2027), Color(0xFF203A43), Color(0xFF2C5364)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🚀 Education section title with icon
              Row(
                children: [
                  SizedBox(width: 8),
                  Text(
                    'Education',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Text(
                'HND in IT\nATI\n2023 - 2025',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 20),

              // 🚀 Skills section title with icon
              Row(
                children: [
                  SizedBox(width: 8),
                  Text(
                    'Skills',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              ...skills.map((skill) => ListTile(
                    leading: Icon(Icons.check, color: Colors.black),
                    title: Text(skill, style: TextStyle(color: Colors.white)),
                  )),
              Spacer(),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Back to Start'),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
