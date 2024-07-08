import 'package:beltis_app/features/dashboard/domain/use_cases/obter_caixa_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/caixa_entity.dart';

part 'caixa_detalhes_cubit.freezed.dart';
part 'caixa_detalhes_state.dart';

@Singleton()
class CaixaDetalhesCubit extends Cubit<CaixaDetalhesState> {
  CaixaDetalhesCubit(this._obterCaixaUseCase) : super(const CaixaDetalhesState.initial());

  final ObterCaixaUseCase _obterCaixaUseCase;

  void carregarCaixa(int caixaId) async {
    emit(CaixaDetalhesState.loading());

    var result = await _obterCaixaUseCase(Params(caixaId: caixaId));

    result.fold(
      (l) {
        emit(CaixaDetalhesState.error(l.message));
      },
      (r) {
        emit(CaixaDetalhesState.loaded(r));
      },
    );
  }
}
