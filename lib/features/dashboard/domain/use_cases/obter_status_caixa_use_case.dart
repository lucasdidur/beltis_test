import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/domain/failures/failure_codegen.dart';
import '../../../../core/domain/usecases/use_case.dart';
import '../entities/caixa_status_entity.dart';
import '../repositories/i_caixa_status_repository.dart';

@LazySingleton()
class ObterStatusCaixaUseCase implements UseCase<List<CaixaStatus>, Params> {
  final ICaixaStatusRepository _repository;

  const ObterStatusCaixaUseCase(this._repository);

  @override
  Future<Either<Failure, List<CaixaStatus>>> call(Params params) {
    return _repository.obterCaixaStatus(caixaId: params.caixaId);
  }
}

class Params extends Equatable {
  final int caixaId;

  Params({required this.caixaId});

  @override
  List<Object> get props => [];
}
