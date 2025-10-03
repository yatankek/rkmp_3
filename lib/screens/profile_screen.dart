import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.person, size: 80, color: Colors.redAccent),
          SizedBox(height: 10),
          Text("Имя: Куок Ньят Ань", style: TextStyle(fontSize: 18)),
          Text("Телефон: +7 900 123-45-67"),
        ],
      ),
    );
  }
}
