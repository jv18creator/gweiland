import 'package:flutter/material.dart';

class FilterArea extends StatelessWidget {
  const FilterArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(
            0x4D0B0B0B,
          ), // Set your desired border color
          width: 1.0, // Set the border width
        ),
        borderRadius: BorderRadius.circular(100.0), // Set the border radius
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.sort_sharp,
              color: Color(0x4D0B0B0B),
            ),
            SizedBox(
              width: 2,
            ),
            Text(
              'Filter',
              style: TextStyle(
                color: Color(0x4D0B0B0B),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
