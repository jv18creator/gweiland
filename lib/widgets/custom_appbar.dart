import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'EXCHANGES',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        Row(
          children: [
            Stack(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.notifications_outlined,
                    color: Colors.black,
                    size: 28,
                  ),
                  onPressed: () {
                    // handle the press
                  },
                ),
                const Positioned(
                  right: 8.0,
                  top: 6.0,
                  child: Icon(
                    Icons.brightness_1,
                    color: Colors.red,
                    size: 9.0,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 0.0),
              child: IconButton(
                icon: const Icon(
                  Icons.settings_outlined,
                  color: Colors.black,
                  size: 28,
                ),
                onPressed: () {
                  // handle the press
                },
              ),
            )
          ],
        )
      ],
    );
  }
}
