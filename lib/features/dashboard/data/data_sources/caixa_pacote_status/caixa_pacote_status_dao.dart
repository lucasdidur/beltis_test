import 'package:floor/floor.dart';

import '../../../../../core/interfaces/i_crud.dart';
import '../../../domain/entities/caixa_pacote_status_entity.dart';

@dao
abstract class CaixaPacoteStatusDao extends ICrud<CaixaPacoteStatus> {
  @Query('SELECT * FROM CaixaPacoteStatus WHERE id = :id')
  Future<CaixaPacoteStatus?> findById(int id);

  @Query('SELECT * FROM CaixaPacoteStatus')
  Future<List<CaixaPacoteStatus>> findAll();

  @Query('SELECT * FROM CaixaPacoteStatus')
  Stream<List<CaixaPacoteStatus>> findAllAsStream();

  @Query('DELETE FROM CaixaPacoteStatus')
  Future<void> deleteAll();
}
