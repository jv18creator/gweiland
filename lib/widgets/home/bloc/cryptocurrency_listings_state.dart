part of 'cryptocurrency_listings_bloc.dart';

enum CryptocurrencyListingsRequestStatus {
  unknown,
  requestInProgress,
  requestSuccess,
  requestFailure,
}

class CryptocurrencyListingsState {
  dynamic data;
  dynamic status;
  final CryptocurrencyListingsRequestStatus requestStatus;

  CryptocurrencyListingsState({
    this.data,
    this.status,
    this.requestStatus = CryptocurrencyListingsRequestStatus.unknown,
  });

  CryptocurrencyListingsState copyWith({
    dynamic data,
    dynamic status,
    CryptocurrencyListingsRequestStatus? requestStatus,
  }) {
    print('the data are $data');
    return CryptocurrencyListingsState(
      data: data ?? this.data,
      status: status ?? this.status,
      requestStatus: requestStatus ?? this.requestStatus,
    );
  }

  factory CryptocurrencyListingsState.fromJson(Map<String, dynamic> source) =>
      CryptocurrencyListingsState(
        data: source['data'],
        status: source['status'],
      );
}
