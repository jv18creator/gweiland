import 'package:flutter/material.dart';

class TabArea extends StatelessWidget {
  const TabArea({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Cryptocurrency',
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
        Text(
          'NFT',
          style: TextStyle(
            fontSize: 24,
            color: Color(0x4D0B0B0B),
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
