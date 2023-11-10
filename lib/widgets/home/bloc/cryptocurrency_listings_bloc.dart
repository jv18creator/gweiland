import 'package:bloc/bloc.dart';
import 'package:gweiland/repository/cryptocurrency_listings_repository.dart';

part 'cryptocurrency_listings_event.dart';
part 'cryptocurrency_listings_state.dart';

class CryptocurrencyListingsBloc
    extends Bloc<CryptocurrencyListingsEvent, CryptocurrencyListingsState> {
  CryptocurrencyListingsBloc() : super(CryptocurrencyListingsState()) {
    final CryptocurrencyListingsRepository api =
        CryptocurrencyListingsRepository();

    on<CryptocurrencyListingsRequested>((event, emit) async {
      try {
        emit(
          state.copyWith(
            requestStatus:
                CryptocurrencyListingsRequestStatus.requestInProgress,
          ),
        );

        final response = await api.getLatestListings();

        emit(
          state.copyWith(
            data: response.data,
            status: response.status,
            requestStatus: CryptocurrencyListingsRequestStatus.requestSuccess,
          ),
        );
      } catch (e) {
        emit(
          state.copyWith(
            requestStatus: CryptocurrencyListingsRequestStatus.requestFailure,
          ),
        );
      }
    });
  }
}
