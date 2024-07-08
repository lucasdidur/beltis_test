import 'package:equatable/equatable.dart';

class Usuario extends Equatable {
  final String nome;
  final String codigo;

  Usuario({
    required this.nome,
    required this.codigo,
  });

  @override
  List<Object?> get props => [nome, codigo];
}
