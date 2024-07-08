import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/domain/failures/failure_codegen.dart';
import '../../../../core/domain/usecases/use_case.dart';
import '../entities/pacote_status_entity.dart';
import '../repositories/i_pacote_status_repository.dart';

@LazySingleton()
class ObterPacoteStatusUseCase implements UseCase<List<PacoteStatus>, ParamsObterPacoteStatusUseCase> {
  final IPacoteStatusRepository _repository;

  const ObterPacoteStatusUseCase(this._repository);

  @override
  Future<Either<Failure, List<PacoteStatus>>> call(ParamsObterPacoteStatusUseCase params) {
    return _repository.obterPacoteStatus(pacoteId: params.pacoteId);
  }
}

class ParamsObterPacoteStatusUseCase extends Equatable {
  final int pacoteId;

  ParamsObterPacoteStatusUseCase({required this.pacoteId});

  @override
  List<Object> get props => [];
}
