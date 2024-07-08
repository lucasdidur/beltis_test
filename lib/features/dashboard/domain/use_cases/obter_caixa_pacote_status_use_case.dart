import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/domain/failures/failure_codegen.dart';
import '../../../../core/domain/usecases/use_case.dart';
import '../entities/caixa_pacote_status_entity.dart';
import '../repositories/i_caixa_pacote_status_repository.dart';

@LazySingleton()
class ObterCaixaPacoteStatusUseCase implements UseCase<CaixaPacoteStatus, Params> {
  final ICaixaPacoteStatusRepository _repository;

  const ObterCaixaPacoteStatusUseCase(this._repository);

  @override
  Future<Either<Failure, CaixaPacoteStatus>> call(Params params) {
    return _repository.obterCaixaPacoteStatus(caixaId: params.caixaId);
  }
}

class Params extends Equatable {
  final int caixaId;

  Params({required this.caixaId});

  @override
  List<Object> get props => [];
}
