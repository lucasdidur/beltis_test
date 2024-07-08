part of 'caixa_detalhes_cubit.dart';

@freezed
class CaixaDetalhesState with _$CaixaDetalhesState {
  const factory CaixaDetalhesState.initial() = _Initial;
  const factory CaixaDetalhesState.loading() = _Loading;
  const factory CaixaDetalhesState.loaded(Caixa caixa) = _Loaded;
  const factory CaixaDetalhesState.error(String mensagem) = _Error;
}
