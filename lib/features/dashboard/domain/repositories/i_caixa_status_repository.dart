import 'package:dartz/dartz.dart';

import '../../../../core/domain/failures/failure_codegen.dart';
import '../entities/caixa_status_entity.dart';

abstract class ICaixaStatusRepository {
  Future<Either<Failure, List<CaixaStatus>>> obterCaixaStatus({required int caixaId});
}
