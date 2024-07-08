import 'package:floor/floor.dart';

import '../../../../../core/interfaces/i_crud.dart';
import '../../../domain/entities/caixa_entity.dart';

@dao
abstract class CaixaDao extends ICrud<Caixa> {
  @Query('SELECT * FROM Caixa WHERE id = :id')
  Future<Caixa?> findById(int id);

  @Query('SELECT * FROM Caixa')
  Future<List<Caixa>> findAll();

  @Query('SELECT * FROM Caixa')
  Stream<List<Caixa>> findAllAsStream();

  @Query('DELETE FROM Caixa')
  Future<void> deleteAll();
}
