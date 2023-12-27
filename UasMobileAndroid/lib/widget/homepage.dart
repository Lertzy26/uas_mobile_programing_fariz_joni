import 'package:flutter/material.dart';
import 'package:uas/page/profile.dart';
import 'package:uas/page/shopbasket.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(
              Icons.arrow_back_ios,
              size: 30,
            ),
            SizedBox(width: 8),
            Text('Music'),
          ],
        ),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          const Icon(
            Icons.notifications,
            size: 35,
          ),
          IconButton(
            onPressed: () {
              // Navigasi ke halaman shopbasket.dart
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  const ShopePage()), // Sesuaikan dengan nama kelas halaman di shopbasket.dart
              );
            },
            icon: const Icon(
              Icons.shopping_basket_rounded,
              size: 35,
            ),
          ),
        ],
      ),
      body: const Dashboard(),
    );
  }
}