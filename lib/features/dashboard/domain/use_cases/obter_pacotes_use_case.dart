import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/domain/failures/failure_codegen.dart';
import '../../../../core/domain/usecases/use_case.dart';
import '../entities/pacote_entity.dart';
import '../repositories/i_pacote_repository.dart';

@LazySingleton()
class ObterPacotesUseCase implements UseCase<List<Pacote>, ParamsObterPacotesUseCase> {
  final IPacoteRepository _repository;

  const ObterPacotesUseCase(this._repository);

  @override
  Future<Either<Failure, List<Pacote>>> call(ParamsObterPacotesUseCase params) {
    return _repository.obterPacotes(caixaId: params.caixaId);
  }
}

class ParamsObterPacotesUseCase extends Equatable {
  final int caixaId;

  ParamsObterPacotesUseCase({required this.caixaId});

  @override
  List<Object> get props => [caixaId];
}
