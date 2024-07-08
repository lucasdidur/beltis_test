import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';

@Entity()
class CaixaPacoteStatus extends Equatable {
  @primaryKey
  final int id;
  final int caixaId;
  final int recebimentoRecebido;
  final int recebimentoFaltante;
  final int recebimentoPorcentagemRecebido;
  final int recebimentoPorcentagemFaltante;
  final int devolucaoDevolvido;
  final int devolucaoFaltante;
  final int devolucaoPorcentagemDevolvido;
  final int devolucaoPorcentagemFaltante;

  const CaixaPacoteStatus({
    required this.id,
    required this.caixaId,
    required this.recebimentoRecebido,
    required this.recebimentoFaltante,
    required this.recebimentoPorcentagemRecebido,
    required this.recebimentoPorcentagemFaltante,
    required this.devolucaoDevolvido,
    required this.devolucaoFaltante,
    required this.devolucaoPorcentagemDevolvido,
    required this.devolucaoPorcentagemFaltante,
  });

  @override
  List<Object?> get props => [
        id,
        caixaId,
        recebimentoRecebido,
        recebimentoFaltante,
        recebimentoPorcentagemRecebido,
        recebimentoPorcentagemFaltante,
        devolucaoDevolvido,
        devolucaoFaltante,
        devolucaoPorcentagemDevolvido,
        devolucaoPorcentagemFaltante,
      ];
}
