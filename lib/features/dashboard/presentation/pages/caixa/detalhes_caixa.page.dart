import 'package:auto_route/annotations.dart';
import 'package:beltis_app/core/utils/colors.dart';
import 'package:beltis_app/features/dashboard/presentation/cubits/caixa/caixa_pacote_status_cubit.dart';
import 'package:beltis_app/features/dashboard/presentation/cubits/pacote/listar_pacotes_cubit.dart';
import 'package:beltis_app/shared/presentation/widgets/botton_navitagor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../cubits/caixa/caixa_detalhes_cubit.dart';
import '../../cubits/caixa/caixa_status_cubit.dart';
import '../../widgets/caixa_dados_tab.dart';
import '../../widgets/caixa_status_tab.dart';
import '../../widgets/pacote_listagem_tab.dart';

@RoutePage()
class DetalhesCaixaPage extends HookWidget {
  final int caixaId;

  const DetalhesCaixaPage({
    super.key,
    @PathParam('id') required this.caixaId,
  });

  @override
  Widget build(BuildContext context) {
    final caixaDetalhesCubit = BlocProvider.of<CaixaDetalhesCubit>(context);
    final caixaStatusCubit = BlocProvider.of<CaixaStatusCubit>(context);
    final caixaPacoteStatusCubit = BlocProvider.of<CaixaPacoteStatusCubit>(context);
    final listarPacotesCubit = BlocProvider.of<ListarPacotesCubit>(context);

    useEffect(() {
      caixaDetalhesCubit.carregarCaixa(caixaId);
      caixaStatusCubit.carregarStatusCaixa(caixaId);
      caixaPacoteStatusCubit.carregarStatusPacoteCaixa(caixaId);
      listarPacotesCubit.carregarPacotes(caixaId);
      return null;
    }, const []);

    return Scaffold(
      appBar: AppBar(
        title: Text('Listagem de Pacotes'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: BlocBuilder<CaixaPacoteStatusCubit, CaixaPacoteStatusState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => Container(),
                    loading: () => Center(
                      child: CircularProgressIndicator(),
                    ),
                    error: (mensagem) => Center(
                      child: Text(mensagem),
                    ),
                    loaded: (caixaStatus) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PackageStatusCard(
                            title: 'Recebimento de pacotes',
                            received: caixaStatus.recebimentoRecebido,
                            pending: caixaStatus.recebimentoFaltante,
                          ),
                          SizedBox(width: 16),
                          PackageStatusCard(
                            devolucao: true,
                            title: 'Devoluções',
                            received: caixaStatus.devolucaoDevolvido,
                            pending: caixaStatus.devolucaoFaltante,
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
            SizedBox(height: 16),
            TabBarSection(),
          ],
        ),
      ),
      bottomNavigationBar: BottonNavitagor(
        activeIndex: 0,
      ),
    );
  }
}

class PackageStatusCard extends StatelessWidget {
  final String title;
  final int received;
  final int pending;
  final bool devolucao;

  PackageStatusCard({
    super.key,
    required this.title,
    required this.received,
    required this.pending,
    this.devolucao = false,
  });

  @override
  Widget build(BuildContext context) {
    int total = received + pending;
    double receivedPercent = (received / total) * 100;
    double pendingPercent = 100 - receivedPercent;

    return Container(
      width: 280,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: TemaUtil.cinza02,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          LayoutBuilder(builder: (_, constraints) {
            return IntrinsicHeight(
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: !devolucao ? TemaUtil.azul01 : TemaUtil.azul02,
                    ),
                    height: 40,
                    width: ((constraints.maxWidth - 10) * receivedPercent) / 100,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: TemaUtil.cinza01,
                    ),
                    height: 40,
                    width: ((constraints.maxWidth - 10) * pendingPercent) / 100,
                  )
                ],
              ),
            );
          }),
          SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Container(
                  width: 10,
                  height: 10,
                  color: !devolucao ? TemaUtil.azul01 : TemaUtil.azul02,
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recebidos',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      '$received pacotes',
                      style: TextStyle(
                        fontSize: 14,
                        color: TemaUtil.cinza03,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "${receivedPercent.toInt()}%",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: TemaUtil.cinza03,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Container(
                  width: 10,
                  height: 10,
                  color: TemaUtil.cinza01,
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Faltantes',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      '$received pacotes',
                      style: TextStyle(
                        fontSize: 14,
                        color: TemaUtil.cinza03,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "${pendingPercent.toInt()}%",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: TemaUtil.cinza03,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TabBarSection extends StatelessWidget {
  const TabBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            TabBar(
              tabs: [
                Tab(text: 'Pacotes'),
                Tab(text: 'Status'),
                Tab(text: 'Dados'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  PacoteListagemTab(),
                  CaixaStatusTab(),
                  BlocBuilder<CaixaDetalhesCubit, CaixaDetalhesState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        loading: () => Center(
                          child: CircularProgressIndicator(),
                        ),
                        loaded: (value) {
                          return CaixaDadosTab(
                            caixa: value,
                          );
                        },
                        error: (value) => Center(
                          child: Text(value.toString()),
                        ),
                        orElse: () => SizedBox.shrink(),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
