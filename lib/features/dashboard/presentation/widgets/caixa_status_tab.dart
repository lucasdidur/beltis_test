import 'package:beltis_app/core/extensions/datetime_extension.dart';
import 'package:beltis_app/features/dashboard/presentation/cubits/caixa/caixa_status_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timelines_plus/timelines_plus.dart';

import '../../../../core/utils/colors.dart';
import '../../domain/entities/caixa_status_entity.dart';

class CaixaStatusTab extends StatelessWidget {
  const CaixaStatusTab({super.key});

  @override
  Widget build(BuildContext context) {
    return TimelineView();
  }
}

class TimelineView extends StatelessWidget {
  const TimelineView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Status da caixa'),
          SizedBox(height: 16),
          Container(
            decoration: BoxDecoration(
              color: TemaUtil.cinza02,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  child: BlocBuilder<CaixaStatusCubit, CaixaStatusState>(
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
                          return TimelineItem(
                            caixaStatus: caixaStatus,
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimelineItem extends StatelessWidget {
  final List<CaixaStatus> caixaStatus;

  TimelineItem({
    super.key,
    required this.caixaStatus,
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
                    Text(caixaStatus[index].dateTime.formatddMMyyyy(), style: TextStyle(fontSize: 12)),
                    SizedBox(height: 4),
                    Text(caixaStatus[index].dateTime.formatHHmm(),
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
                caixaStatus[index].status.description,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            );
          },
          indicatorBuilder: (context, index) {
            return OutlinedDotIndicator(
              color: caixaStatus[index].status.color,
              backgroundColor: caixaStatus[index].status.color,
            );
          },
          connectorBuilder: (context, index, type) {
            return const SolidLineConnector(
              color: TemaUtil.cinza04,
              thickness: 1,
            );
          },
          itemExtentBuilder: (context, index) => 50,
          itemCount: caixaStatus.length,
        ),
      ),
    );
  }
}
