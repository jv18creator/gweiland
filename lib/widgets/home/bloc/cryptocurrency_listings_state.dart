part of 'cryptocurrency_listings_bloc.dart';

enum CryptocurrencyListingsRequestStatus {
  unknown,
  requestInProgress,
  requestSuccess,
  requestFailure,
}

class CryptocurrencyListingsState {
  List<Datum> data;
  Status? status;
  final CryptocurrencyListingsRequestStatus requestStatus;

  CryptocurrencyListingsState({
    this.data = const [],
    this.status,
    this.requestStatus = CryptocurrencyListingsRequestStatus.unknown,
  });

  CryptocurrencyListingsState copyWith({
    List<Datum>? data,
    Status? status,
    CryptocurrencyListingsRequestStatus? requestStatus,
  }) {
    return CryptocurrencyListingsState(
      data: data ?? this.data,
      status: status ?? this.status,
      requestStatus: requestStatus ?? this.requestStatus,
    );
  }
}
