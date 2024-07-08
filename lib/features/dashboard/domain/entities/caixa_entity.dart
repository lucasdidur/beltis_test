import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';

@Entity()
class Caixa extends Equatable {
  @primaryKey
  final int id;
  final String codigo;
  final String pontoEntrega;
  final String municipio;
  final String escola;
  final String etapa;
  final String componenteCurricular;

  Caixa({
    required this.id,
    required this.codigo,
    required this.pontoEntrega,
    required this.municipio,
    required this.escola,
    required this.etapa,
    required this.componenteCurricular,
  });

  @override
  List<Object?> get props => [id, codigo];
}
