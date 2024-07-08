import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/domain/failures/failure_codegen.dart';
import '../../../../core/domain/usecases/use_case.dart';
import '../entities/caixa_entity.dart';
import '../repositories/i_caixa_repository.dart';

@LazySingleton()
class ObterCaixaUseCase implements UseCase<Caixa, Params> {
  final ICaixaRepository _caixaRepository;

  const ObterCaixaUseCase(this._caixaRepository);

  @override
  Future<Either<Failure, Caixa>> call(Params params) {
    return _caixaRepository.obterCaixa(caixaId: params.caixaId);
  }
}

class Params extends Equatable {
  final int caixaId;

  Params({required this.caixaId});

  @override
  List<Object> get props => [];
}
