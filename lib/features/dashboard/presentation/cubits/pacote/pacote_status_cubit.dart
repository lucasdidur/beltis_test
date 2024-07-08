import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/pacote_status_entity.dart';
import '../../../domain/use_cases/obter_pacote_status_use_case.dart';

part 'pacote_status_cubit.freezed.dart';
part 'pacote_status_state.dart';

@Singleton()
class PacoteStatusCubit extends Cubit<PacoteStatusState> {
  PacoteStatusCubit(this._useCase) : super(const PacoteStatusState.initial());

  final ObterPacoteStatusUseCase _useCase;

  void carregarPacoteStatus(int pacoteId) async {
    emit(PacoteStatusState.loading());

    var result = await _useCase(ParamsObterPacoteStatusUseCase(pacoteId: pacoteId));

    result.fold(
      (l) {
        emit(PacoteStatusState.error(l.message));
      },
      (r) {
        emit(PacoteStatusState.loaded(r));
      },
    );
  }
}
