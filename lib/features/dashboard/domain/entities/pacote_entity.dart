import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';

@Entity()
class Pacote extends Equatable {
  @primaryKey
  final int id;
  final int caixaId;
  final String codigo;
  final bool recebido;
  final bool devolvido;

  Pacote({
    required this.id,
    required this.caixaId,
    required this.codigo,
    required this.recebido,
    required this.devolvido,
  });

  @override
  List<Object?> get props => [id, caixaId, codigo];
}
