part of 'caixa_status_cubit.dart';

@freezed
class CaixaStatusState with _$CaixaStatusState {
  const factory CaixaStatusState.initial() = _Initial;
  const factory CaixaStatusState.loading() = _Loading;
  const factory CaixaStatusState.loaded(List<CaixaStatus> caixaStatus) = _Loaded;
  const factory CaixaStatusState.error(String mensagem) = _Error;
}
