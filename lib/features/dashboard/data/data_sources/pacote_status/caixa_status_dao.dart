import 'package:floor/floor.dart';

import '../../../../../core/interfaces/i_crud.dart';
import '../../../domain/entities/pacote_status_entity.dart';

@dao
abstract class PacoteStatusDao extends ICrud<PacoteStatus> {
  @Query('SELECT * FROM PacoteStatus WHERE id = :id')
  Future<PacoteStatus?> findById(int id);

  @Query('SELECT * FROM PacoteStatus')
  Future<List<PacoteStatus>> findAll();

  @Query('SELECT * FROM PacoteStatus')
  Stream<List<PacoteStatus>> findAllAsStream();

  @Query('DELETE FROM PacoteStatus')
  Future<void> deleteAll();
}
