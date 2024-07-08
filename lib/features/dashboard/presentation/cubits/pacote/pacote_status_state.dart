part of 'pacote_status_cubit.dart';

@freezed
class PacoteStatusState with _$PacoteStatusState {
  const factory PacoteStatusState.initial() = _Initial;
  const factory PacoteStatusState.loading() = _Loading;
  const factory PacoteStatusState.loaded(List<PacoteStatus> pacotes) = _Loaded;
  const factory PacoteStatusState.error(String mensagem) = _Error;
}
