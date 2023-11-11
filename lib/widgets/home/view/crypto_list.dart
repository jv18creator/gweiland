import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gweiland/widgets/home/bloc/cryptocurrency_listings_bloc.dart';

class CryptoList extends StatefulWidget {
  const CryptoList({super.key});

  @override
  State<CryptoList> createState() => _CryptoListState();
}

class _CryptoListState extends State<CryptoList> {
  @override
  void initState() {
    context
        .read<CryptocurrencyListingsBloc>()
        .add(CryptocurrencyListingsRequested());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const Row(
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
          const SizedBox(
            height: 15,
          ),
          BlocBuilder<CryptocurrencyListingsBloc, CryptocurrencyListingsState>(
            builder: (context, state) {
              return Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: state.data.length,
                    itemBuilder: (context, index) {
                      final crypto = state.data[index];
                      final logo = state.info?[crypto.id.toString()]?['logo'];
                      final volumStatusString =
                          (crypto.quote?.usd?.volumeChange24H ?? 0) > 0
                              ? '+${crypto.quote?.usd?.volumeChange24H}'
                              : '${crypto.quote?.usd?.volumeChange24H}';
                      final bool isStateInProfit =
                          (crypto.quote?.usd?.volumeChange24H ?? 0) > 0
                              ? true
                              : false;

                      final volumString = crypto.quote?.usd?.price != null
                          ? '\$${(crypto.quote?.usd?.price?.toStringAsFixed(2)).toString()} USD'
                          : '';

                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 1,
                          horizontal: 4,
                        ),
                        child: Card(
                          child: ListTile(
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 8,
                            ),
                            tileColor: Colors.transparent,
                            onTap: () {
                            },
                            title: Row(
                              children: [
                                Text(
                                  crypto.symbol ?? '',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                SvgPicture.asset(
                                  isStateInProfit
                                      ? 'assets/icons/positive-sign.svg'
                                      : 'assets/icons/negative-sign.svg',
                                  width: 45,
                                )
                              ],
                            ),
                            subtitle: Text(
                              crypto.name ?? '',
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            trailing: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  volumString,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  volumStatusString,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                    color:
                                        (crypto.quote?.usd?.volumeChange24H ??
                                                    0) >
                                                0
                                            ? Colors.green
                                            : Colors.red,
                                  ),
                                ),
                              ],
                            ),
                            leading: logo != null ? Image.network(logo) : null,
                            // leading: CircleAvatar(
                            //   backgroundImage:
                            //       AssetImage('assets/${crypto.avatar}'),
                            // ),
                          ),
                        ),
                      );
                    }),
              );
            },
          ),
        ],
      ),
    );
  }
}
