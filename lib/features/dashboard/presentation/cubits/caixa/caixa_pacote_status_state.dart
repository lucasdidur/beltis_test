part of 'caixa_pacote_status_cubit.dart';

@freezed
class CaixaPacoteStatusState with _$CaixaPacoteStatusState {
  const factory CaixaPacoteStatusState.initial() = _Initial;
  const factory CaixaPacoteStatusState.loading() = _Loading;
  const factory CaixaPacoteStatusState.loaded(CaixaPacoteStatus caixaStatus) = _Loaded;
  const factory CaixaPacoteStatusState.error(String mensagem) = _Error;
}
