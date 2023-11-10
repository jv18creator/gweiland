import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gweiland/widgets/home/bloc/cryptocurrency_listings_bloc.dart';


class CryptoList extends StatefulWidget {
  const CryptoList({super.key});

  @override
  State<CryptoList> createState() => _CryptoListState();
}

class _CryptoListState extends State<CryptoList> {

    @override
  void initState() {
    context.read<CryptocurrencyListingsBloc>().add(CryptocurrencyListingsRequested());
    super.initState();
  }


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
