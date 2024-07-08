import 'package:dartz/dartz.dart';

import '../../../../core/domain/failures/failure_codegen.dart';
import '../entities/caixa_entity.dart';

abstract class ICaixaRepository {
  Future<Either<Failure, List<Caixa>>> obterCaixas();
  Future<Either<Failure, Caixa>> obterCaixa({required int caixaId});
}
