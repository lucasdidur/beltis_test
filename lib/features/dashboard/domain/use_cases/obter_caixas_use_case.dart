import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/domain/failures/failure_codegen.dart';
import '../../../../core/domain/usecases/use_case.dart';
import '../entities/caixa_entity.dart';
import '../repositories/i_caixa_repository.dart';

@LazySingleton()
class ObterCaixas implements UseCase<List<Caixa>, NoParams> {
  final ICaixaRepository _caixaRepository;

  const ObterCaixas(this._caixaRepository);

  @override
  Future<Either<Failure, List<Caixa>>> call(NoParams params) {
    return _caixaRepository.obterCaixas();
  }
}
