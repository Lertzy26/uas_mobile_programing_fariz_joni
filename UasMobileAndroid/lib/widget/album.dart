import 'package:flutter/material.dart';

class Album extends StatelessWidget {
  final AssetImage image;

  const Album({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5), // Sesuaikan dengan sudut yang diinginkan
            child: Image(
              image: image,
              width: 360,
              height: 360,
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 15)),
          const Text(
            '\$125',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}