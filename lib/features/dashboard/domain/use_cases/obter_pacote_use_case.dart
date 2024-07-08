import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/domain/failures/failure_codegen.dart';
import '../../../../core/domain/usecases/use_case.dart';
import '../entities/pacote_entity.dart';
import '../repositories/i_pacote_repository.dart';

@LazySingleton()
class ObterPacoteUseCase implements UseCase<Pacote, Params> {
  final IPacoteRepository _caixaRepository;

  const ObterPacoteUseCase(this._caixaRepository);

  @override
  Future<Either<Failure, Pacote>> call(Params params) {
    return _caixaRepository.obterPacote(pacoteId: params.pacoteId);
  }
}

class Params extends Equatable {
  final int pacoteId;

  Params({required this.pacoteId});

  @override
  List<Object> get props => [];
}
