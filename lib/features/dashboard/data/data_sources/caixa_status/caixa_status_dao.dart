import 'package:floor/floor.dart';

import '../../../../../core/interfaces/i_crud.dart';
import '../../../domain/entities/caixa_status_entity.dart';

@dao
abstract class CaixaStatusDao extends ICrud<CaixaStatus> {
  @Query('SELECT * FROM CaixaStatus WHERE id = :id')
  Future<CaixaStatus?> findById(int id);

  @Query('SELECT * FROM CaixaStatus')
  Future<List<CaixaStatus>> findAll();

  @Query('SELECT * FROM CaixaStatus')
  Stream<List<CaixaStatus>> findAllAsStream();

  @Query('DELETE FROM CaixaStatus')
  Future<void> deleteAll();
}
