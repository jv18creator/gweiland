import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: const BoxDecoration(
        color: Color(0xff0B0B0B),
        borderRadius: BorderRadius.all(
          Radius.circular(35.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 10.0, // soften the shadow
            spreadRadius: 2.0, //extend the shadow
            offset: Offset(
              2.0, // Move to right 10  horizontally
              2.0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
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
                const SizedBox(
                  height: ICON_LABEL_GAP,
                ),
                const Text(
                  'Shop',
                  style: TextStyle(color: Colors.white, fontSize: 13),
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
                const SizedBox(
                  height: ICON_LABEL_GAP,
                ),
                const Text(
                  'Exchange',
                  style: TextStyle(color: Colors.white, fontSize: 13),
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
                const SizedBox(
                  height: 6,
                ),
                const Text(
                  'Launchpads',
                  style: TextStyle(color: Colors.white, fontSize: 13),
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
                const SizedBox(
                  height: ICON_LABEL_GAP,
                ),
                const Text(
                  'Wallet',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

const double ICON_LABEL_GAP = 6;
