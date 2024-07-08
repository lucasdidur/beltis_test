part of 'listar_pacotes_cubit.dart';

@freezed
class ListarPacotesState with _$ListarPacotesState {
  const factory ListarPacotesState.initial() = _Initial;
  const factory ListarPacotesState.loading() = _Loading;
  const factory ListarPacotesState.loaded(List<Pacote> pacotes) = _Loaded;
  const factory ListarPacotesState.error(String mensagem) = _Error;
}
