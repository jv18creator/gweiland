import 'package:dio/dio.dart';
import 'package:gweiland/widgets/home/bloc/cryptocurrency_listings_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class CryptocurrencyListingsRepository {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://pro-api.coinmarketcap.com',
      headers: { 'X-CMC_PRO_API_KEY': dotenv.env['COIN_MARKET_CAP_API_KEY'] }
    ),
  );


  Future getLatestListings() async {
    var response = await dio.get('/v1/cryptocurrency/listings/latest');
    print('response ${response.data['data']}');
    print('${CryptocurrencyListingsState.fromJson(response.data)}');
    return CryptocurrencyListingsState(
        data: response.data['data'],
        status: response.data['status'],
      );
  }
}
