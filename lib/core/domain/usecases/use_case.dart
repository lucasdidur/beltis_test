import 'package:beltis_app/core/domain/failures/failure_codegen.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class UseCase<ReturnValue, Params extends Equatable> {
  const UseCase();
  Future<Either<Failure, ReturnValue>> call(Params params);
}

abstract class StreamUseCase<ReturnValue, Params extends Equatable> {
  const StreamUseCase();
  Stream<Either<Failure, ReturnValue>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
