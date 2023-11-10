import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 200,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        color: Color(0xff0B0B0B),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: [
                SvgPicture.asset(
                  'assets/icons/shop.svg',
                  width: 28,
                  height: 28,
                ),
                const Text(
                  'Shop',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Column(
              children: [
                SvgPicture.asset(
                  'assets/icons/exchange.svg',
                  width: 28,
                  height: 28,
                ),
                const Text(
                  'Exchange',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Column(
              children: [
                SvgPicture.asset(
                  'assets/icons/earth.svg',
                  width: 28,
                  height: 28,
                ),
              ],
            ),
             Column(
              children: [
                SvgPicture.asset(
                  'assets/icons/launch.svg',
                  width: 28,
                  height: 28,
                ),
                const Text(
                  'Launchpads',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
             Column(
              children: [
                SvgPicture.asset(
                  'assets/icons/wallet.svg',
                  width: 28,
                  height: 28,
                ),
                const Text(
                  'Wallet',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
