import 'package:floor/floor.dart';

import '../../../../../core/interfaces/i_crud.dart';
import '../../../domain/entities/pacote_entity.dart';

@dao
abstract class PacoteDao extends ICrud<Pacote> {
  @Query('SELECT * FROM Pacote WHERE id = :id')
  Future<Pacote?> findById(int id);

  @Query('SELECT * FROM Pacote')
  Future<List<Pacote>> findAll();

  @Query('SELECT * FROM Pacote')
  Stream<List<Pacote>> findAllAsStream();

  @Query('DELETE FROM Pacote')
  Future<void> deleteAll();
}
