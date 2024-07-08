import 'package:beltis_app/features/dashboard/domain/entities/caixa_status_entity.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/use_cases/obter_status_caixa_use_case.dart';

part 'caixa_status_cubit.freezed.dart';
part 'caixa_status_state.dart';

@Singleton()
class CaixaStatusCubit extends Cubit<CaixaStatusState> {
  CaixaStatusCubit(this._obterStatusCaixaUseCase) : super(const CaixaStatusState.initial());

  final ObterStatusCaixaUseCase _obterStatusCaixaUseCase;

  void carregarStatusCaixa(int caixaId) async {
    emit(CaixaStatusState.loading());

    var result = await _obterStatusCaixaUseCase(Params(caixaId: caixaId));

    result.fold(
      (l) {
        emit(CaixaStatusState.error(l.message));
      },
      (r) {
        emit(CaixaStatusState.loaded(r));
      },
    );
  }
}
