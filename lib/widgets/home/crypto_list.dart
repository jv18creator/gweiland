import 'package:flutter/material.dart';

class CryptoList extends StatelessWidget {
  const CryptoList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Top Cryptocurrencies',
              style: TextStyle(
                fontSize: 21,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              width: 16.0,
            ),
            Text(
              'View All',
              style: TextStyle(
                fontSize: 17,
                color: Color(0x800B0B0B),
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
