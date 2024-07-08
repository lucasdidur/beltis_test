import 'package:auto_route/annotations.dart';
import 'package:beltis_app/core/extensions/datetime_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:timelines_plus/timelines_plus.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../shared/presentation/widgets/botton_navitagor.dart';
import '../../../domain/entities/pacote_status_entity.dart';
import '../../cubits/pacote/detalhes_pacote_cubit.dart';
import '../../cubits/pacote/pacote_status_cubit.dart';

@RoutePage()
class DetalhesPacotePage extends HookWidget {
  final int pacoteId;

  const DetalhesPacotePage({
    super.key,
    @PathParam('id') required this.pacoteId,
  });

  @override
  Widget build(BuildContext context) {
    final pacoteDetalhesCubit = BlocProvider.of<DetalhesPacoteCubit>(context);
    final pacoteStatusCubit = BlocProvider.of<PacoteStatusCubit>(context);

    useEffect(() {
      pacoteDetalhesCubit.carregarPacote(pacoteId);
      pacoteStatusCubit.carregarPacoteStatus(pacoteId);
      return null;
    }, const []);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: BlocBuilder<DetalhesPacoteCubit, DetalhesPacoteState>(
            builder: (context, state) {
              String codigoPacote = state.maybeWhen(
                orElse: () => "",
                loaded: (pacote) {
                  return pacote.codigo;
                },
              );

              return Text("Pacote $codigoPacote");
            },
          ),
        ),
        bottomNavigationBar: BottonNavitagor(
          activeIndex: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                TabBar(
                  tabs: [
                    Tab(text: 'Status'),
                    Tab(text: 'Dados'),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      PacoteStatusTab(),
                      Center(child: Text('Dados')),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PacoteStatusTab extends StatelessWidget {
  const PacoteStatusTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16),
        Text(
          'Status do pacote',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        SizedBox(height: 16),
        Container(
          decoration: BoxDecoration(
            color: TemaUtil.cinza02,
            borderRadius: BorderRadius.circular(16),
          ),
          child: BlocBuilder<PacoteStatusCubit, PacoteStatusState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => Container(),
                loading: () => Center(
                  child: CircularProgressIndicator(),
                ),
                error: (mensagem) => Center(
                  child: Text(mensagem),
                ),
                loaded: (pacotes) {
                  return TimelineItem(
                    pacoteStatus: pacotes,
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

class TimelineItem extends StatelessWidget {
  final List<PacoteStatus> pacoteStatus;

  TimelineItem({
    super.key,
    required this.pacoteStatus,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: FixedTimeline.tileBuilder(
        builder: TimelineTileBuilder.connected(
          firstConnectorBuilder: (context) => SolidLineConnector(
            color: TemaUtil.cinza04,
            thickness: 1,
          ),
          lastConnectorBuilder: (context) => SolidLineConnector(
            color: TemaUtil.cinza04,
            thickness: 1,
          ),
          oppositeContentsBuilder: (context, index) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Column(
                  children: [
                    Text(pacoteStatus[index].dateTime.formatddMMyy(), style: TextStyle(fontSize: 12)),
                    SizedBox(height: 4),
                    Text(pacoteStatus[index].dateTime.formatHHmm(),
                        style: TextStyle(color: TemaUtil.cinza03, fontSize: 12)),
                  ],
                ),
              ),
            );
          },
          contentsBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                pacoteStatus[index].status.description,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            );
          },
          indicatorBuilder: (context, index) {
            return OutlinedDotIndicator(
              color: pacoteStatus[index].status.color,
              backgroundColor: pacoteStatus[index].status.color,
            );
          },
          connectorBuilder: (context, index, type) {
            return const SolidLineConnector(
              color: TemaUtil.cinza04,
              thickness: 1,
            );
          },
          itemExtentBuilder: (context, index) => 50,
          itemCount: pacoteStatus.length,
        ),
      ),
    );
  }
}
