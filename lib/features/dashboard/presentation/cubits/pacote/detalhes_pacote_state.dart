part of 'detalhes_pacote_cubit.dart';

@freezed
class DetalhesPacoteState with _$DetalhesPacoteState {
  const factory DetalhesPacoteState.initial() = _Initial;
  const factory DetalhesPacoteState.loading() = _Loading;
  const factory DetalhesPacoteState.loaded(Pacote pacote) = _Loaded;
  const factory DetalhesPacoteState.error(String mensagem) = _Error;
}
