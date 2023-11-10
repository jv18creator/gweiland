import 'package:flutter/material.dart';
import 'package:gweiland/widgets/custom_appbar.dart';
import 'package:gweiland/widgets/custom_bottom_navbar.dart';
import 'package:gweiland/widgets/home/view/crypto_list.dart';
import 'package:gweiland/widgets/home/view/crypto_status_card.dart';
import 'package:gweiland/widgets/home/view/filter_area.dart';
import 'package:gweiland/widgets/home/view/search_input.dart';
import 'package:gweiland/widgets/home/view/tab_area.dart';
import 'package:gweiland/widgets/home/bloc/cryptocurrency_listings_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.only(left: 20, top: 20, right: 20),
          child: Column(
            children: [
              BlocBuilder<CryptocurrencyListingsBloc,
                  CryptocurrencyListingsState>(
                builder: (context, state) {
                  print('state.data ${state.data}');
                  return Container(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.tune,
                      ),
                      label: Text(
                        "Apply Filters".toUpperCase(),
                        style: const TextStyle(),
                      ),
                      style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                    ),
                  );
                },
              ),
              Expanded(
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
