import 'package:dio/dio.dart';
import 'package:gweiland/models/cryptocurrency_listings_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class CryptocurrencyListingsRepository {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://pro-api.coinmarketcap.com',
      headers: { 'X-CMC_PRO_API_KEY': dotenv.env['COIN_MARKET_CAP_API_KEY'] }
    ),
  );


  Future<CryptocurrencyListingsModel> getLatestListings() async {
    var response = await dio.get('/v1/cryptocurrency/listings/latest');
    return CryptocurrencyListingsModel.fromJson(response.data);
  }
}
