import 'package:dartz/dartz.dart';

import '../../../../core/domain/failures/failure_codegen.dart';
import '../entities/pacote_entity.dart';

abstract class IPacoteRepository {
  Future<Either<Failure, List<Pacote>>> obterPacotes({required int caixaId});
  Future<Either<Failure, Pacote>> obterPacote({required int pacoteId});
}
