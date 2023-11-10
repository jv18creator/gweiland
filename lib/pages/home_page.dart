import 'package:flutter/material.dart';
import 'package:gweiland/widgets/custom_appbar.dart';
import 'package:gweiland/widgets/custom_bottom_navbar.dart';
import 'package:gweiland/widgets/home/crypto_list.dart';
import 'package:gweiland/widgets/home/crypto_status_card.dart';
import 'package:gweiland/widgets/home/filter_area.dart';
import 'package:gweiland/widgets/home/search_input.dart';
import 'package:gweiland/widgets/home/tab_area.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
          child: Column(
            children: [
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomAppbar(),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: SearchInput(),
                        ),
                        SizedBox(
                          width: 16.0,
                        ),
                        Expanded(
                          child: FilterArea(),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    TabArea(),
                    SizedBox(
                      height: 15,
                    ),
                    CryptoStatusCard(),
                    SizedBox(
                      height: 15,
                    ),
                    CryptoList(),
                  ],
                ),
              ),
              CustomBottomNavbar(),
            ],
          ),
        ),
      ),
    );
  }
}
