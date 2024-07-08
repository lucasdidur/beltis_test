import 'package:dartz/dartz.dart';

import '../../../../core/domain/failures/failure_codegen.dart';
import '../entities/caixa_pacote_status_entity.dart';

abstract class ICaixaPacoteStatusRepository {
  Future<Either<Failure, CaixaPacoteStatus>> obterCaixaPacoteStatus({required int caixaId});
}
