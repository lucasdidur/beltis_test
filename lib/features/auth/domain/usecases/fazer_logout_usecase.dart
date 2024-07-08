import 'package:beltis_app/core/domain/failures/failure_codegen.dart';
import 'package:beltis_app/core/domain/usecases/use_case.dart';
import 'package:beltis_app/core/interfaces/i_usecase.dart';
import 'package:beltis_app/features/auth/domain/repositories/i_authentication_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class FazerLogoutUseCase implements IUseCase<Unit, NoParams> {
  final IAutenticacaoRepository repository;

  FazerLogoutUseCase(
    this.repository,
  );

  @override
  Future<Either<Failure, Unit>> call(NoParams params) async {
    return await repository.fazerLogout();
  }
}
