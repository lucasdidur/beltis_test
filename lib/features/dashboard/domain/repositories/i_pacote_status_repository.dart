import 'package:dartz/dartz.dart';

import '../../../../core/domain/failures/failure_codegen.dart';
import '../entities/pacote_status_entity.dart';

abstract class IPacoteStatusRepository {
  Future<Either<Failure, List<PacoteStatus>>> obterPacoteStatus({required int pacoteId});
}
