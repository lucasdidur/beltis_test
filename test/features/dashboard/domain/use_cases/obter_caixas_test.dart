import 'package:beltis_app/core/domain/failures/failure_codegen.dart';
import 'package:beltis_app/core/domain/usecases/use_case.dart';
import 'package:beltis_app/features/dashboard/domain/entities/caixa_entity.dart';
import 'package:beltis_app/features/dashboard/domain/repositories/i_caixa_repository.dart';
import 'package:beltis_app/features/dashboard/domain/use_cases/obter_caixas_use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'obter_caixas_test.mocks.dart';

@GenerateMocks([ICaixaRepository])
void main() {
  late ObterCaixas useCase;
  late ICaixaRepository mockICaixaRepository;

  setUp(() {
    mockICaixaRepository = MockICaixaRepository();
    useCase = ObterCaixas(mockICaixaRepository);
  });

  final Caixa tCaixaModel = Caixa(
    id: 1,
    codigo: '160500003517-85',
    pontoEntrega: '1ª Região',
    municipio: 'Aracaju/Se',
    escola: 'EMEF Deputado Jaime Araujo (28031121)',
    etapa: '2º Ano EF (Ensino Fundamental)',
    componenteCurricular: 'Língua Portuguesa',
  );

  test(
    'deve retornar lista de caixas',
    () async {
      // arrange
      when(mockICaixaRepository.obterCaixas()).thenAnswer((_) async => Right([tCaixaModel, tCaixaModel]));

      // act
      final Either<Failure, List<Caixa>> result = await useCase(NoParams());

      //assert
      result.fold((left) => fail('test failed'), (right) {
        verify(mockICaixaRepository.obterCaixas()).called(1);
        expect(right, equals([tCaixaModel, tCaixaModel]));
      });

      verifyNoMoreInteractions(mockICaixaRepository);
    },
  );
}
