import 'package:beltis_app/core/domain/failures/failure_codegen.dart';
import 'package:dartz/dartz.dart';

abstract class IUseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

abstract class IUseCaseOption<Type, Params> {
  Future<Option<Type>> call(Params params);
}
