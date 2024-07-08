import 'package:beltis_app/features/dashboard/domain/use_cases/obter_pacotes_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/pacote_entity.dart';

part 'listar_pacotes_cubit.freezed.dart';
part 'listar_pacotes_state.dart';

@Singleton()
class ListarPacotesCubit extends Cubit<ListarPacotesState> {
  ListarPacotesCubit(this._obterPacotesUseCase) : super(const ListarPacotesState.initial());

  final ObterPacotesUseCase _obterPacotesUseCase;

  void carregarPacotes(int caixaId) async {
    emit(ListarPacotesState.loading());

    var result = await _obterPacotesUseCase(ParamsObterPacotesUseCase(caixaId: caixaId));

    await result.fold(
      (l) {
        emit(ListarPacotesState.error(l.message));
      },
      (r) async {
        emit(ListarPacotesState.loaded(r));
      },
    );
  }
}
