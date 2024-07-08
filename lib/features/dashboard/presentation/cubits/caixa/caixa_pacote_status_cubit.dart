import 'package:beltis_app/features/dashboard/domain/use_cases/obter_caixa_pacote_status_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/caixa_pacote_status_entity.dart';

part 'caixa_pacote_status_cubit.freezed.dart';
part 'caixa_pacote_status_state.dart';

@Singleton()
class CaixaPacoteStatusCubit extends Cubit<CaixaPacoteStatusState> {
  CaixaPacoteStatusCubit(this._useCase) : super(const CaixaPacoteStatusState.initial());

  final ObterCaixaPacoteStatusUseCase _useCase;

  void carregarStatusPacoteCaixa(int caixaId) async {
    emit(CaixaPacoteStatusState.loading());

    var result = await _useCase(Params(caixaId: caixaId));

    result.fold(
      (l) {
        emit(CaixaPacoteStatusState.error(l.message));
      },
      (r) {
        emit(CaixaPacoteStatusState.loaded(r));
      },
    );
  }
}
