import 'package:beltis_app/core/utils/colors.dart';
import 'package:beltis_app/features/dashboard/domain/entities/caixa_entity.dart';
import 'package:flutter/material.dart';

class CaixaDadosTab extends StatelessWidget {
  final Caixa caixa;

  const CaixaDadosTab({
    super.key,
    required this.caixa,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: Text(
              'Dados da caixa',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            children: [
              Linha(descricao: 'Código', valor: caixa.codigo),
              Divider(),
              Linha(descricao: 'Ponto de entrega', valor: caixa.pontoEntrega),
              Divider(),
              Linha(descricao: 'Município', valor: caixa.municipio),
              Divider(),
              Linha(descricao: 'Escola', valor: caixa.escola),
              Divider(),
              Linha(descricao: 'Ano Escolar/Etapa', valor: caixa.etapa),
              Divider(),
              Linha(descricao: 'Componente Curricular', valor: caixa.componenteCurricular),
              Divider(),
            ],
          )
        ],
      ),
    );
  }
}

class Linha extends StatelessWidget {
  final String descricao;
  final String valor;

  const Linha({super.key, required this.descricao, required this.valor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              descricao.toUpperCase(),
              style: TextStyle(
                fontSize: 14,
                color: TemaUtil.cinza03,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              valor.toUpperCase(),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
