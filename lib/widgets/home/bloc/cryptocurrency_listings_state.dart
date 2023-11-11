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
  dynamic info;

  CryptocurrencyListingsState({
    this.data = const [],
    this.status,
    this.requestStatus = CryptocurrencyListingsRequestStatus.unknown,
    this.info
  });

  CryptocurrencyListingsState copyWith({
    List<Datum>? data,
    Status? status,
    CryptocurrencyListingsRequestStatus? requestStatus,
    dynamic info,
  }) {
    return CryptocurrencyListingsState(
      data: data ?? this.data,
      status: status ?? this.status,
      requestStatus: requestStatus ?? this.requestStatus,
      info: info ?? this.info
    );
  }
}
