part of 'cryptocurrency_listings_bloc.dart';

sealed class CryptocurrencyListingsEvent {
  const CryptocurrencyListingsEvent();
}

final class CryptocurrencyListingsRequested extends CryptocurrencyListingsEvent {}
final class CryptocurrencyInfoRequested extends CryptocurrencyListingsEvent {}