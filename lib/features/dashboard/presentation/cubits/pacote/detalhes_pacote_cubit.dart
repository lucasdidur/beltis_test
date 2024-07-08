import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/pacote_entity.dart';
import '../../../domain/use_cases/obter_pacote_use_case.dart';

part 'detalhes_pacote_cubit.freezed.dart';
part 'detalhes_pacote_state.dart';

@Singleton()
class DetalhesPacoteCubit extends Cubit<DetalhesPacoteState> {
  DetalhesPacoteCubit(this._useCase) : super(const DetalhesPacoteState.initial());

  final ObterPacoteUseCase _useCase;

  void carregarPacote(int pacoteId) async {
    emit(DetalhesPacoteState.loading());

    var result = await _useCase(Params(pacoteId: pacoteId));

    result.fold(
      (l) {
        emit(DetalhesPacoteState.error(l.message));
      },
      (r) {
        emit(DetalhesPacoteState.loaded(r));
      },
    );
  }
}
